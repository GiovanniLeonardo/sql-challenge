-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT employee.emp_no AS "Employee Num",
	employee.last_name AS "Last_Name",
	employee.first_name AS "First_Name",
	department.dept_name AS "Department Name"
FROM employees as employee
JOIN dept_emp as depart_num ON employee.emp_no = depart_num.emp_no
JOIN departments as department ON department.dept_no = depart_num.dept_no;