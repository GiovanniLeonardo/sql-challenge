-- List the following details of each employee: employee number, last name, first name, gender, and salary.
-- Perform an INNER JOIN on the two tables
SELECT employees.emp_no AS "Employee Num", employees.last_name AS "Last Name", employees.first_name AS "First Name", employees.gender AS "Gender", salaries.salary AS "Salary"
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

