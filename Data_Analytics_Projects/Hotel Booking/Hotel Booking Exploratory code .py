#importing libraries
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import warnings
warnings.filterwarnings('ignore')

#Loading the Dataset
df = pd.read_csv("hotel_booking.csv")

#Exploratory Data Analysis
print(df.head(5))
print(df.shape)

#Checking data type of the columns
print(df.info)

#We see the column 'reservation_status_date' is in an object data type so we convert it to date time
df['reservation_status_date'] = pd.to_datetime(df['reservation_status_date'])

#Displaying what the different categories are in the object column
for col in df.describe(include = 'object').columns:
    print(col)
    print(df[col].unique)
    print('-'*50)

#Checking for missing values
df.isnull().sum()

#dropping columns 'Company' and 'Agent' and drop rows in columns that have 0
df.drop(['company','agent'], axis = 1, inplace = True)
df.dropna(inplace = True)

#Checking for missing values again
df.isnull().sum()

print(df.describe()) #Here on checking we see that there are two ouliers in the 'adr' column. Hence next step is to remove them

df = df[['adr'] < 5000]

#Data Analysis and Visualization

#checking % of how many are cancelled in 'is_canceled' Column
cancelled_perc = df['is_canceled'].value_counts(normalize = True)
print(cancelled_perc)

#plotting this data
plt.figure(figsize = (5,4))
plt.title('Reservation Count')
plt.bar(['Not cancelled','Cancelled'],df['is_canceled'].valuecounts(), edgecolor = 'k', width = 0.7)
plt.show()

#plotting multiple parameters
plt.figure(figuresize = (8,4))
ax1 = sns.countplot(x = 'hotel', hue = 'is_canceled', data = df, palette = 'Blues')
legend_labels,_ = ax1.get_legend_handle_labels()
ax1.legend(bbox_to_anchor(1,1))
plt.title('Reservation Status in Different Hotels', size = 20)
plt.xlabel('Hotel')
plt.ylabel('Number of Reservations')
plt.show()

#% of cancellations in Resort Hotel
resort_hotel = df[df['hotel'] == 'Resort Hotel']
resort_hotel['is_canceled'].value_counts(normalize = True)

#% of cancellations in City Hotel
city_hotel = df[df['hotel'] == 'City Hotel']
city_hotel['is_canceled'].value_counts(normalize = True)

resort_hotel = resort_hotel.groupby('Reservation_status_date')[['adr']].mean()
city_hotel = city_hotel.groupby('Reservation_status_date')[['adr']].mean()

#Visualizing as a whole
plt.figure(figsize = (20,8))
plt.title('Average daily rate in city and resort hotel', fontsize = 30)
plt.plot(resort_hotel.index, resort_hotel['adr'],label = 'Resort Hotel')
plt.plot(city_hotel.index, city_hotel['adr'],label = 'City Hotel')
plt.show()

#Visualizing as a whole in bar chart
df['Month'] = df['reservation_status_date'].dt.month
plt.figure(figsize=(16,8))
ax1 = sns.countplot(x='month', hue = 'is_canceled', data = df)
plt.xlabel('month')
plt.ylabel('number of reservations')
plt.legend(['not calceled','canclled'])
plt.show()

#Analysing cancellation rate monthwise
plt.figure(figsize = (15,8))
plt.title('ADR per month', fontsize = 30)
sns.barplot('Month','adr', data = df[df['is_canceled'] == 1].groupby('month')[['adr']].sum().resetindex())
plt.legend(fontsize = 20)
plt.show()

#Analysing countrywise
cancelled_data = df[df['is_canceled'] == 1]
top_10_country = cancelled_data['country'].valuecounts()[:10]
plt.figure(figsize = (8,8))
plt.title("Top 10 countries with reservation canceled")
plt.pie(top_10_country, autopct = '%.2f', labels = top_10_country.index)
plt.show()

#Checking % of booking sbased on market segments and the cancelled booking based on the market segments
print(df['market_segment'].value_counts(normalize=True))
print(cancelled_data['market_segment'].value.counts(normalie=True))

cancelled_df_adr = cancelled_data.groupby('reservation_status_date')[['adr']].mean()
cancelled_df_adr.reset_index(inplace=True)
cancelled_df_adr.sort_values('reservation_status_date', inplace =True)

not_cancelled_df = df[df['is_canceled'] == 0]
not_cancelled_df_adr = not_cancelled_df.groupby('reservation_status_date')[['adr']].mean()
not_cancelled_df_adr.reset_index(inplace=True)
not_cancelled_df_adr.sort_values('reservation_status_date', inplace =True)

plt.figure(figsize = (20,6))
plt.title('Average Daliy Rate')
plt.plot(not_cancelled_df_adr['reservation_status_date'],not_cancelled_df_adr['adr'],label = 'not cancelled')
plt.plot(cancelled_df_adr['reservation_status_date'],cancelled_df_adr['adr'],label = 'cancelled')
plt.legend()

cancelled_df_adr = cancelled_df_adr[(cancelled_df_adr['reservation_status_date']>'2016')&(cancelled_df_adr['reservation_status_date']<'2017-09')]
not_cancelled_df_adr = not_cancelled_df_adr[(not_cancelled_df_adr['reservation_status_date']>'2016')&(not_cancelled_df_adr['reservation_status_date']<'2017-09')]

plt.figure(figsize = (20,6))
plt.title('Average Daily Rate', fontsize = 30)
plt.plot(not_cancelled_df_adr['reservation_status_date'],not_cancelled_df_adr['adr'],label = 'not cancelled')
plt.plot(cancelled_df_adr['reservation_status_date'],cancelled_df_adr['adr'], label = 'cancelled')
plt.legend(fontsize = 20)
plt.show()













