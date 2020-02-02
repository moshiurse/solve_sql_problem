SELECT Salary as SecondHighestSalary  FROM (SELECT Salary FROM Employee
ORDER BY Salary DESC
LIMIT 2) a
ORDER BY Salary ASC
LIMIT 1
