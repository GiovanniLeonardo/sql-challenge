-- List employees who were hired in 1986

SELECT * FROM employees
WHERE hire_date > '1985-12-31' and hire_date < '1987-01-01'
