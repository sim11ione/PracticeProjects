from flask import Flask, request, jsonify
from flask_cors import CORS
import pandas as pd
import numpy as np
from statsmodels.tsa.statespace.sarimax import SARIMAX
from statsmodels.tsa.holtwinters import ExponentialSmoothing
from tpot import TPOTRegressor
import matplotlib
matplotlib.use('Agg')  # Specify non-interactive backend
import matplotlib.pyplot as plt
from scipy import stats
from pandas.tseries.offsets import DateOffset
import threading

app = Flask(__name__)
CORS(app)  # Add this line to enable CORS for all routes

def generate_forecast_plot(sales_data, forecast_data):
    plt.figure(figsize=(10, 6))
    plt.plot(sales_data.index, sales_data['Demand'], label='Actual Demand')
    plt.plot(forecast_data['Date'], forecast_data['Forecast'], label='Forecast')
    plt.xlabel('Date')
    plt.ylabel('Demand')
    plt.title('Demand Forecast')
    plt.legend()
    plt.grid(True)
    plt.savefig('forecast_plot.png')
    plt.close()

@app.route('/forecast', methods=['POST'])
def forecast():
    data = request.get_json()
    num_periods = data['num_periods']

    # Load the sales data from the Excel file, skipping rows and columns
    sales_data = pd.read_excel('Demand Data.xlsx')

    # Set the date column as the index and convert it to datetime format
    sales_data['Date'] = pd.to_datetime(sales_data['Date'])
    sales_data.set_index('Date', inplace=True)

    # Check for missing values in 'Demand' column
    if sales_data['Demand'].isnull().any():
        # Replace missing values with the average of the previous and next data points
        sales_data['Demand'].fillna((sales_data['Demand'].shift() + sales_data['Demand'].shift(-1)) / 2, inplace=True)

    # Replace outliers using z-score method
    z_scores = np.abs(stats.zscore(sales_data['Demand']))
    threshold = 3  # Set the threshold for z-score
    sales_data['Demand'] = np.where(z_scores > threshold, np.nan, sales_data['Demand'])

    # Interpolate missing values
    sales_data['Demand'].interpolate(method='linear', inplace=True)

    # Use TPOT to find the best pipeline using the original data
    X_train = sales_data['Demand'][:-1].values.reshape(-1, 1)
    y_train = sales_data['Demand'][1:].values
    tpot = TPOTRegressor(generations=10, population_size=10, verbosity=2)
    tpot.fit(X_train, y_train)

    # SARIMA model
    sarima_model = SARIMAX(sales_data['Demand'], order=(1, 0, 0), seasonal_order=(0, 1, 1, 12))
    sarima_result = sarima_model.fit()

    # Holt-Winters model
    holtwinters_model = ExponentialSmoothing(sales_data['Demand'], seasonal='add', seasonal_periods=12)
    holtwinters_result = holtwinters_model.fit()

    # Forecasting
    sarima_forecast = sarima_result.forecast(steps=num_periods)
    holtwinters_forecast = holtwinters_result.forecast(steps=num_periods)

    # TPOT forecast based on user input
    X_test = sales_data['Demand'][:num_periods].values.reshape(-1, 1)
    tpot_forecast = tpot.predict(X_test)

    # Calculate the average of the three forecasts
    final_forecast = (sarima_forecast + holtwinters_forecast + tpot_forecast) / 3

    # Create a DataFrame with the forecasts for the desired time periods
    last_date = sales_data.index[-1]
    forecast_dates = [last_date + DateOffset(months=i) for i in range(1, num_periods + 1)]
    forecast_data = pd.DataFrame({
        'Date': forecast_dates,
        'Forecast': final_forecast
    })

    # Export the forecast data to an Excel file
    forecast_data.to_excel('ForecastData.xlsx', index=False)

    # Generate the plot on the main thread using app.app_context()
    with app.app_context():
        threading.Thread(target=generate_forecast_plot, args=(sales_data, forecast_data)).start()

    # Prepare the response
    response = {
        'forecast_data': forecast_data.to_dict(orient='records'),
        'plot_path': 'forecast_plot.png'
    }

    return jsonify(response)

if __name__ == '__main__':
    app.run()
