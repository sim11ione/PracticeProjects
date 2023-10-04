import psycopg2
import pandas as pd

def create_database():
    #connecting to default database
    #conn = psycog2.connect("host = 127.0.0.1 dbname = studentdb user=student password=student")
    conn = psycopg2.connect("host = 127.0.0.1 dbname=postgres user=postgres password=Black29berry#")
    conn.set_session(autocommit=True)
    cur = conn.cursor()

    #create sparkify database with UTF8 encoding
    cur.execute("DROP DATABASE accounts")
    cur.execute("CREATE DATABASE accounts")

    #close connection to default database
    conn.close()

    #connect to sparkify database
    conn = psycopg2.connect("host = 127.0.0.1 dbname=accounts user=postgres password=Black29berry#")
    cur = conn.cursor()

    return cur, conn
def drop_table(cur,conn):
    for query in drop_table_queries:
        cur.execute(query)
        conn.commit()
def create_table(cur,conn):
    for query in create_table_queries:
        cur.execute(query)
        conn.commit()

AccountsCountry = pd.read_csv("data/Wealth-AccountsCountry.csv")
AccountsCountry.head()

AccountsCountry_clean=AccountsCountry[['Country code','Short Name','Table Name', 'Long Name','Currency Unit']]
AccountsCountry_clean.head()

AccountsData = pd.read_csv("data/Wealth-AccountData.csv")
AccountsData.head()

AccountsData.columns

AccountsData = AccountsData.drop(['Unnamed: 9'], axis =1)
AccountsData.head()

AccountsSeries = pd.read_csv("data/Wealth-AccountData.csv")
AccountsSeries.columns

AccountsSeries = AccountsSeries[['Series Code','Topic','Indicator Name','Short definition']]
AccountsSeries.head()

cur,conn = create_database()

accounts_country_table_create = ("""CREATE TABLE IF NOT EXISTS accountscountry(
country_code VARCHAR PRIMARY KEY,
short_name VARCHAR,
table_name VARCHAR,
long_name VARCHAR,
currency_unit VARCHAR)
""")

cur.execute(accounts_country_table_create)
conn.commit()

accounts_data_table_create = ("""CREATE TABLE IF NOT EXISTS accountsdata(
country_name VARCHAR,
country_code VARCHAR,
indicator_name VARCHAR,
indicator_code VARCHAR,
year_1995 NUMERIC,
year_2000 NUMERIC,
year_2005 NUMERIC,
year_2010 NUMERIC,
year_2014 NUMERIC
)""")

cur.execute(accounts_data_table_create)
conn.commit()

accountseries_data_table_create = ("""CREATE TABLE IF NOT EXISTS accountseries(
series_code VARCHAR,
topic VARCHAR,
indicator_name VARCHAR,
short_definition VARCHAR
)""")


accounts_country_table_insert = ("""INSERT INTO accountscountry(
country_code,
short_name,
table_name,
long_name,
currency_unit)
VALUES(%s, %s, %s, %s, %s)
""")

for i, row in AccountsCountry_clean.iterrows():
    cur.execute(accounts_country_table_insert, list(row))

conn.commit()

accounts_data_table_insert = ("""INSERT INTO accountsdata(
country_name,
country_code,
indicator_name,
indicator_code,
year_1995,
year_2000,
year_2005,
year_2010,
year_2014)
VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s)
""")

for i, row in AccountsData.iterrows():
    cur.execute(accounts_country_table_insert, list(row))
accountseries_data_table_insert = ("""INSERT INTO accountseries(
series_code,
topic,
indicator_name,
short_definition)
VALUES(%s, %s, %s, %s)
""")

for i, row in AccountsSeries.iterrows():
    cur.execute(accounts_country_table_insert, list(row))
conn.commit()















