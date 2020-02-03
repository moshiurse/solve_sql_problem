SELECT total,
(SELECT COUNT(employee_id) FROM employee WHERE  salary*months = total) 
FROM (SELECT MAX(salary * months) AS total FROM employee) a
