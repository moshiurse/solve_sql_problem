
SELECT *,
(SELECT COUNT(DISTINCT lead_manager_code) FROM lead_manager WHERE company_code = a.company_code ) AS lead,
(SELECT COUNT(DISTINCT senior_manager_code) FROM senior_manager WHERE company_code = a.company_code ) AS senior,
(SELECT COUNT(DISTINCT manager_code) FROM manager WHERE company_code = a.company_code ) AS manager,
(SELECT COUNT(DISTINCT employee_code) FROM employee WHERE company_code = a.company_code ) AS employee
FROM company a
ORDER BY a.company_code ASC
