--Query the list of CITY names from STATION that either do not start with 
--vowels or do not end with vowels. Your result cannot contain duplicates.


SELECT distinct `city` FROM station
WHERE SUBSTRING(`city`,1,1)  NOT IN ('a','e','i','o','u') OR SUBSTRING(`city`,-1)  NOT IN ('a','e','i','o','u')
