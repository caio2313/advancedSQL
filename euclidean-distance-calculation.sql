-- Challenge: Weather Observation Station 19
-- Goal: Calculate the Euclidean Distance between two geospatial points (P1 and P2) based on their min/max coordinates.
-- Formula: SQRT( (b-a)^2 + (d-c)^2 )
-- Database: MySQL 8.0

SELECT ROUND(SQRT(((max(lat_n) -min(lat_n)) * (max(lat_n) - min(lat_n))) + ((max(long_w) - min(long_w)) * (max(long_w) - min(long_w)))), 4)
FROM station;

/* ENGINEERING NOTE: 
   Implementing mathematical and analytical formulas directly within the database engine 
   reduces network latency by avoiding transferring raw coordinates to external scripts. 
   Calculating spatial distances is a foundational task in geospatial data engineering, 
   logistics routing, and feature engineering for machine learning location models.
*/
