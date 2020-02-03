
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  		DECLARE v_salary INT;
        DECLARE offs INT;
       
       set offs = N-1;
        
          SELECT IFNULL(Salary, NULL) INTO v_salary FROM (SELECT DISTINCT Salary FROM Employee 
    		ORDER BY Salary DESC
    		LIMIT N) a
    		LIMIT offs,1;
            
            RETURN v_salary;
END
