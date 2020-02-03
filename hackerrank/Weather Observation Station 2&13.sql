-- Weather Observation Station 2

select ROUND(sum(lat_n),2) as lat ,ROUND(sum(long_w),2) as lon from STATION

--Weather Observation Station 13

SELECT TRUNCATE(SUM(LAT_N), 4)
  FROM STATION
 WHERE LAT_N BETWEEN 38.7880 AND 137.2345;
