--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective
--lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, 
--choose the one that comes first when ordered alphabetically.

SELECT `city`, LENGTH(`city`) len  FROM station  ORDER BY len DESC ,`city` ASC
LIMIT 1;

SELECT `city`, LENGTH(`city`) len  FROM station  ORDER BY len ASC ,`city` ASC
LIMIT 1;
