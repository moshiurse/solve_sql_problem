SELECT Salary as SecondHighestSalary  FROM (SELECT Salary FROM Employee
ORDER BY Salary DESC
LIMIT 2) a
ORDER BY Salary ASC
LIMIT 1
-- this solution may cause error when there is no second salary

SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
    
    -- this is the solution for null 
