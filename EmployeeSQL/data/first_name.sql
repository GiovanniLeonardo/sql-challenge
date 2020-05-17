-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name,
	   employees.last_name
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'; 