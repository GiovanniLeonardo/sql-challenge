-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dept_managers.dept_no AS "Department Num", dept_managers.emp_no AS "Employee Num", dept_managers.from_date AS "From_Date", dept_managers.to_date AS "End_Date", 
employees.last_name AS "Last_Name", employees.first_name AS "First_Name",
departments.dept_name AS "Department Name"

FROM dept_managers
JOIN employees ON dept_managers.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_managers.dept_no;