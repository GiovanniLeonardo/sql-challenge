CREATE TABLE IF NOT EXISTS employees  (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(40)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL
);


CREATE TABLE IF NOT EXISTS titles (
    emp_no int   NOT NULL,
    title varchar(35)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);


CREATE TABLE IF NOT EXISTS departments (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL
);


CREATE TABLE IF NOT EXISTS dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(30)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE IF NOT EXISTS dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
     from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE IF NOT EXISTS salaries (
    emp_no int   NOT NULL,
    salary numeric   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

