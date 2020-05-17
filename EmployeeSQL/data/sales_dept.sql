-- List all employees in the Sales department: 
-- including their employee number, last name, first name, and department name
	
SELECT employees.emp_no AS "Employee Num",
	   employees.last_name AS "Last_Name",
	   employees.first_name AS "First_Name",
	   department.dept_name AS "Dept_Name"
	  
FROM employees as employees
JOIN dept_emp as dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments as department ON department.dept_no = dept_emp.dept_no
WHERE department.dept_name = 'Sales';