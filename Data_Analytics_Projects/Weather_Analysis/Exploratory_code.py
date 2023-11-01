import pandas as pd
data = pd.read_csv("1. Weather Data.csv")
#print(data)

#Finding all windspeed values in the data
print(data["Wind Speed_km/h"].unique)

#Find number of times when weather is exactly clear
#Method 1
print(data.Weather.value_counts())

#Method 2 - Filtering
print(data[data.Weather == "clear"])

#Method 3 - Groupby
print(data.groupby("Weather").get_group("Clear"))

#Find the number of times when Wind speed is exactly 4km/h
print(data[data['Wind Speed_km/h'] == 4])

#Find out all the null values in the data
print(data.isnull().sum())
print(data.notnull().sum())

#Rename weather column to weather condition
data.rename(columns={'Weather':'Weather condition'}, inplace=True)
print(data.head(2))

#Find mean of visibilty
print(data.Visibility_km.mean())

#Find Standard deviation of "Pressure"
print(data.Press_kPa.std())

#Find Variance of column 'Relative Humidity'
print(data['Rel Hum_%'].var())

#Find all Instances 'Snow' was Recorded
print(data[data['Weather condition'].str.contains('Snow')])

#Find all instances where 'Wind Speed is above 24' and 'Visibilty is above 25'
print((data['Wind Speed_km/h'] > 24) & (data['Visibility_km'] > 25))

#Find all instances when: A) Weather is clear and relative humidity is > 50 or visibilty is above 40
print((data['Weather Condtion'] == 'Clear') & (data[Rel Hum_%] > 50) | (data['Visibilty_km'] > 40))











