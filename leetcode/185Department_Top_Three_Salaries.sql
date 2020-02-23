The Employee table holds all employees. Every employee has an Id, and there is also a column for the department Id.

+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |
+----+-------+--------+--------------+
The Department table holds all departments of the company.

+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
Write a SQL query to find employees who earn the top three salaries in each of the department. 
For the above tables, your SQL query should return the following rows (order of rows does not matter).

+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Randy    | 85000  |
| IT         | Joe      | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |
+------------+----------+--------+
Explanation:

In IT department, Max earns the highest salary, both Randy and Joe earn the second highest salary,
and Will earns the third highest salary. There are only two employees in the Sales department,
Henry earns the highest salary while Sam earns the second highest salary. 
 
 
-- Ans
 SELECT d.Name AS Department,
       em1.Name AS Employee,
       em1.Salary AS Salary
FROM employee em1
LEFT JOIN department d
  ON em1.DepartmentId = d.Id
JOIN employee em2
  ON em1.DepartmentId = em2.DepartmentId
  AND em1.Salary <= em2.Salary

WHERE d.Name is not null
GROUP BY em1.Name, 
         em1.Salary,
         em1.DepartmentId
HAVING count(distinct em2.Salary) <= 3
