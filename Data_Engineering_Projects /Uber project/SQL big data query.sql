
CREATE OR REPLACE TABLE `uber-analytics-395803.uber_data_engg.tbl_analytics` AS (
SELECT
f.VendorID,
f.trip_id,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pick.pickup_latitude,
pick.pickup_longitude,
drop.dropoff_latitude,
drop.dropoff_longitude,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM

`uber-analytics-395803.uber_data_engg.fact_table` AS f
JOIN `uber-analytics-395803.uber_data_engg.datetime_dim` AS d  ON f.datetime_id=d.datetime_id
JOIN `uber-analytics-395803.uber_data_engg.passenger_count_dim` p  ON p.passenger_count_id=f.passenger_count_id
JOIN `uber-analytics-395803.uber_data_engg.trip_distance_dim` t  ON t.trip_distance_id=f.trip_distance_id
JOIN `uber-analytics-395803.uber_data_engg.rate_code_dim` r ON r.rate_code_id=f.rate_code_id
JOIN `uber-analytics-395803.uber_data_engg.pickup_location_dim` pick ON pick.pickup_location_id=f.pickup_location_id
JOIN `uber-analytics-395803.uber_data_engg.dropoff_location_dim` drop ON drop.dropoff_location_id=f.dropoff_location_id
JOIN `uber-analytics-395803.uber_data_engg.payment_type_dim` pay ON pay.payment_type_id=f.payment_type_id)
;