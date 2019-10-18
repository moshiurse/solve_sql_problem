--Weather Observation Station 8
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both 
--their first and last characters. Your result cannot contain duplicates.


SELECT distinct `city` FROM station
WHERE SUBSTRING(`city`,1,1)  IN ('a','e','i','o','u') AND SUBSTRING(`city`,-1)  IN ('a','e','i','o','u')
