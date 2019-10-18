--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
--Your result cannot contain duplicates.



SELECT distinct `city` FROM STATION
WHERE SUBSTRING(`city`,1,1)  IN ('a','e','i','o','u')
