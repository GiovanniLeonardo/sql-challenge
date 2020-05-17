                             -- Data Analysis -- 

-- 1.
-- List the following details of each employee: employee number, last name, first name, gender, and salary.
-- Perform an INNER JOIN on the two tables
SELECT employees.emp_no AS "Employee Num", 
employees.last_name AS "Last Name", 
employees.first_name AS "First Name", 
employees.gender AS "Gender", 
salaries.salary AS "Salary"

FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;



-- 2.
-- List employees who were hired in 1986

SELECT * FROM employees
WHERE hire_date > '1985-12-31' and hire_date < '1987-01-01'



-- 3.
-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dept_managers.dept_no AS "Department Num", 
dept_managers.emp_no AS "Employee Num", 
dept_managers.from_date AS "From_Date", 
dept_managers.to_date AS "End_Date", 
employees.last_name AS "Last_Name", 
employees.first_name AS "First_Name",
departments.dept_name AS "Department Name"

FROM dept_managers
JOIN employees ON dept_managers.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_managers.dept_no;



-- 4.
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT employee.emp_no AS "Employee Num",
	employee.last_name AS "Last_Name",
	employee.first_name AS "First_Name",
	department.dept_name AS "Department Name"
FROM employees as employee
JOIN dept_emp as depart_num ON employee.emp_no = depart_num.emp_no
JOIN departments as department ON department.dept_no = depart_num.dept_no;



-- 5.
-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name,
	   employees.last_name
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'; 



-- 6.
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



-- 7. 
-- List all employees in the Sales and Development departments, including their:
-- employee number, last name, first name, and department name.
	
SELECT employees.emp_no AS "Employee Num",
	   employees.last_name AS "Last_Name",
	   employees.first_name AS "First_Name",
	   department.dept_name AS "Dept_Name"
	  
FROM employees as employees
JOIN dept_emp as dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments as department ON department.dept_no = dept_emp.dept_no
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';



-- 8. 
-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT last_name, count (last_name) as name_cnt
FROM employees
GROUP BY last_name
ORDER BY name_cnt desc;

