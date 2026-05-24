-- Challenge: Weather Observation Station 20
-- Goal: Dynamically find the Median of the Northern Latitudes (LAT_N).
-- Database: MySQL 8.0

SELECT round(lat_n, 4)
FROM  (SELECT lat_n, PERCENT_RANK() OVER (ORDER BY lat_n) as ranking
from station
) as subquery
WHERE ranking = 0.5;

/* ENGINEERING NOTE: 
   MySQL lacks a native, cross-version MEDIAN() aggregate function. Using PERCENT_RANK() 
   is a highly modern and performant approach to isolate the exact 50th percentile. 
   In data pipelines, calculating the median is much more robust than the average (mean) 
   when handling datasets heavily skewed by anomalous outliers.
*/
