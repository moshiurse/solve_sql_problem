--Weather Observation Station 14

select TRUNCATE(max(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345

--Weather Observation Station 15

select ROUND(max(LONG_W),4) FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345) 

--Weather Observation Station 16

select ROUND(MIN(LAT_N),4) FROM STATION
WHERE LAT_N > 38.7780

--Weather Observation Station 17

select ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780) 


--Weather Observation Station 18

SELECT ROUND(MAX(LAT_N)-(MIN(LAT_N)) + (MAX(LONG_W)-MIN(LONG_W)),4)FROM STATION





