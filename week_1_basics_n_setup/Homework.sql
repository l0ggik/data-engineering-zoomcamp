SELECT count(*) 
FROM public.yellow_taxi_data 
WHERE tpep_pickup_datetime::date = '2021-01-15';

SELECT tpep_pickup_datetime
FROM public.yellow_taxi_data 
WHERE tip_amount = (SELECT max(tip_amount) FROM public.yellow_taxi_data);

SELECT count("DOLocationID"),
		"DOLocationID"
FROM public.yellow_taxi_data
GROUP BY "DOLocationID"
ORDER BY count("DOLocationID") DESC;

SELECT *
FROM public.zones
WHERE "LocationID" = 236;

SELECT "PULocationID",
		"DOLocationID",
		sum(total_amount)/count(*) AS price 
FROM public.yellow_taxi_data
GROUP BY "PULocationID", "DOLocationID"
ORDER BY price DESC;

SELECT *
FROM public.zones
WHERE "LocationID" = 4 OR "LocationID" = 265;



