
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT distinct `city` FROM station
WHERE SUBSTRING(`city`,1,1) NOT IN ('a','e','i','o','u') 
