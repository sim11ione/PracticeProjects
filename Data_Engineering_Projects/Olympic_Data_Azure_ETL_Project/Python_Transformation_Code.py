from pyspark.sql.functions import col
from pyspark.sql.types import IntegerType, DoubleType, BooleanType, DateType

# Connection to the data account and the azure container with authentication

configs = {"fs.azure.account.auth.type": "OAuth",
           "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
           "fs.azure.account.oauth2.client.id": "e4a11919-7af9-4a14-b5f3-97b3a575625f",
           "fs.azure.account.oauth2.client.secret": '7Dg8Q~T_42iOXcTmun9dUOGhSEHfvjNURHvVacWZ',
           "fs.azure.account.oauth2.client.endpoint": "https://login.microsoftonline.com/96dc52d1-e142-486d-9921-5c6acb0c4e6d/oauth2/token"}

dbutils.fs.mount(
    source="abfss://olmpicbukuct@tokyompdata.dfs.core.windows.net",  # contrainer@storageacc
    mount_point="/mnt/tokyomp",
    extra_configs=configs)

%fs
ls "/mnt/tokyomp"

athletes = spark.read.format("csv").option("header","true").option("inferSchema","true").load("/mnt/tokyomp/raw-data/athletes.csv")
coaches = spark.read.format("csv").option("header","true").option("inferSchema","true").load("/mnt/tokyomp/raw-data/coaches.csv")
entriesgender = spark.read.format("csv").option("header","true").option("inferSchema","true").load("/mnt/tokyomp/raw-data/EntriesGender.csv")
medals = spark.read.format("csv").option("header","true").option("inferSchema","true").load("/mnt/tokyomp/raw-data/medals.csv")
teams = spark.read.format("csv").option("header","true").option("inferSchema","true").load("/mnt/tokyomp/raw-data/teams.csv")

athletes.show()

athletes.printSchema()

coaches.show()

coaches.printSchema()

entriesgender.show()

entriesgender.printSchema()

entriesgender.printSchema()

medals.show()

medals.printSchema()

teams.show()

teams.printSchema()

#Find top countries with highest gold medals
top_gold_medals_countries = medals.orderBy("Gold",ascending=False).select("Team_country","Gold").show()

# Calculate average number of entries by gender for each discipline
average_entries_by_gender = entriesgender.withColumn(
    'Avg_Female', entriesgender['Female'] / entriesgender['Total']
).withColumn(
    'Avg_Male', entriesgender['Male'] / entriesgender['Total']
)
average_entries_by_gender.show()

athletes.repartition(1).write.mode("overwrite").option("header",'true').csv("/mnt/tokyomp/transform-data/athletes")

#loading the transformer data into the transformed data file in the container
coaches.repartition(1).write.mode("overwrite").option("header",'true').csv("/mnt/tokyomp/transform-data/coaches")
entriesgender.repartition(1).write.mode("overwrite").option("header",'true').csv("/mnt/tokyomp/transform-data/entriesgender")
medals.repartition(1).write.mode("overwrite").option("header",'true').csv("/mnt/tokyomp/transform-data/medals")
teams.repartition(1).write.mode("overwrite").option("header",'true').csv("/mnt/tokyomp/transform-data/teams")
