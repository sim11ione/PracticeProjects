import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import warnings
warnings.filterwarnings('ignore')

#connecting to SQL
connection = sqlite3.connect('travel.sqlite')
cursor = connection.cursor()

#reading the data from the database and printing list of tables
cursor.execute("""SELECT name FROM sqlite_master WHERE type = 'table';""")
print('List of tables present in the database')
table_list = [table[0] for table in cursor.fetchall()]
print(table_list)

#DATA EXPLORATION
aircraft_data = pd.read_sql_query("SELECT * FROM airports_data", connection)
print(aircraft_data.head()) #print first 5 rows

airports_data = pd.read_sql_query("SELECT * FROM airports_data", connection)
print(airports_data.head()) #print first 5 rows

boarding_passes = pd.read_sql_query("SELECT * FROM boarding_passes", connection)
print(boarding_passes.head()) #print first 5 rows

bookings = pd.read_sql_query("SELECT * FROM bookings", connection)
print(bookings.head()) #print first 5 rows

flights = pd.read_sql_query("SELECT * FROM flights", connection)
print(flights.head()) #print first 5 rows

seats = pd.read_sql_query("SELECT * FROM seats", connection)
print(seats.head()) #print first 5 rows

ticket_flights = pd.read_sql_query("SELECT * FROM ticket_flights", connection)
print(ticket_flights.head()) #print first 5 rows

tickets = pd.read_sql_query("SELECT * FROM tickets", connection)
print(tickets.head()) #print first 5 rows

#Printing datatype of all columns in the tables
for table in table_list:
    print("\ntable: ", table)
    column_info = connection.execute('PRAGMA table_info({})'.format(table))
    for column in column_info.fetchall():
        print(column[1:3])

for table in table_list:
    print("\ntable:", table)
    df_table = pd.read_sql_query(f"SELECT * FROM {table}", connection)
    print(df_table.isnull().sum())

#BASIC ANALYSIS

#1) How many planes have more than 100 seats
planes_100 = pd.read_sql_query("""SELECT aircraft_code, COUNT(*) AS number_of_seats GROUP BY aircraft_code HAVING num_of_seats > 100""", connection)
print(planes_100)

#2) What is the number of tickets booked and total amount earned changed with time?
nt = pd.read_sql_query("""SELECT * FROM tickets 
INNER JOIN bookings ON tickets.book.ref = bookings.book_ref""", connection)
tickets['book_date'] = pd.to_datetime(tickets['book_date'])
tickets['date'] = tickets['book_date'].dt.date
print(tickets)
#now getting count of tickets per day and plotting
x = tickets.groupby('date')[['date']].count()
print(x)
plt.figure(figsize = (18,6))
plt.plot(x.index,x['date'],marker = '^')
plt.xlabel('Date',fontsize = 20)
plt.ylabel('Number of Tickets',fontsize = 30)
plt.grid('b')
plt.plot()

#total amount
bookings=pd.read_sql_query("""SELECT sum(total_amount) FROM bookings""", connection)
print(bookings)

#plotting the total booking against date
bookings=pd.read_sql_query("""SELECT * FROM bookings""", connection)
bookings['book_date'] = pd.to_datetime(bookings['book_date'])
bookings['date'] = bookings['book_date'].dt.date
y = bookings.groupby('date')[['total_amount']].sum()
print(y)
plt.figure(figsize = (18,6))
plt.plot(x.index,x['total_amount'],marker = '^')
plt.xlabel('Date',fontsize = 20)
plt.ylabel('total amount earned',fontsize = 30)
plt.grid('b')
plt.plot()

#3) Calculate the average charges for each aircraft with different fare conditions
df = pd.read_sql_query("""SELECT * FROM ticket_flights JOIN flights on ticket_flights.flight_id = flights.flight_id""", connection)
print(df)
#Selecting the required fields
df = pd.read_sql_query("""SELECT fare_conditions, aircraft_code, avg(amount) FROM ticket_flights JOIN flights on ticket_flights.flight_id = flights.flight_id GROUP BY aircraft_code, fare_conditions""", connection)
print(df)
#plotting the average amount of all types of airplanes
sns.barplot(data = df, x = 'aircraft_code', ylabel = 'avg(amount)', hue = 'fare_conditions')

#ANALYSING OCCUPANCY RATE
#Total revenue per year and average revenue per ticket
pd.read_sql_query("""SELECT aircraft_code, ticket_count, total_revenue, total_revenue/ticket_count AS avg_revenue_per_ticket FROM
(SELECT aircraft_code, COUNT(*) AS ticket_count, sum(amount)
 AS total_revenue, total_revenue FROM ticket_flights 
 JOIN flights ON ticket_flights.flight_id = flights.flight_id GROUP BY aircraft_code)""", connection)

#Calculate average occupancy per aircraft
occupancy_rate = pd.read_sql_query("""SELECT a.aircraft_code, avg(a.seats_count) AS booked_seats, b.num_seats, avg(a.seats_count)/b.num_seats AS occupancy_rate
(SELECT aircraft_code, flights.flight_id, COUNT(*) AS seat_count FROM boarding_passes
INNER JOIN flights ON boarding_passes.flight_id = flights.flight_id GROUP BY aircraft_code, flights.flight_id) AS a
INNER JOIN(SELECT aircraft_code, COUNT(*) AS num_seats FROM seats GROUP BY aircraft_code) AS b 
on a.aircraft_code = b.aircraft_code GROUP BY a.aircraft_code""", connection)
print(occupancy_rate)

#Increase Occupancy rate aircraft occupancy rate by 10% an then checking total annual turnover
occupancy_rate['Inc occupancy rate'] = occupancy_rate['occupancy_rate']+occupancy_rate['occupancy_rate']*0.1
print(occupancy_rate)

#Calculating Total revenue
total_revenue = pd.read_sql_query("""SELECT aircraft_code, sum(amount), AS total_revenue FROM ticket_flights JOIN flights ON ticket_flights.flight_id = flights.flight_id GROUP BY aircraft_code""",connection)
print(total_revenue)

#Calculating annual turnover
occupancy_rate['Inc Total Annual Turnover'] = (total_revenue['total_revenue']/occupancy_rate['occupancy_rate'])*occupancy_rate['Inc occupancy rate']
print(occupancy_rate)
























