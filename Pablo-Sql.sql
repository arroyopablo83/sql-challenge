 

CREATE TABLE data_department (
     dept_no VARCHAR(4) PRIMARY KEY,
     dept_name VARCHAR (30)
);

SELECT * FROM data_department;

CREATE TABLE data_employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(1),
	hire_date DATE
);

SELECT * FROM data_employees;


CREATE TABLE data_dept_emp (
    emp_no INT REFERENCES data_employees(emp_no),
    dept_no VARCHAR(4) REFERENCES data_department(dept_no),
	from_date DATE,
    to_date DATE,
	PRIMARY KEY(emp_no,dept_no,from_date,to_date)
);

SELECT * FROM data_dept_emp LIMIT 10;

SELECT * FROM data_dept_emp;

CREATE TABLE data_titles (
    emp_no INT REFERENCES data_employees(emp_no),
    title VARCHAR(30),
	from_date DATE,
    to_date DATE,	
	PRIMARY KEY(emp_no,title,from_date,to_date)
);

SELECT * FROM data_titles;

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) REFERENCES data_department(dept_no),
    emp_no INT REFERENCES data_employees(emp_no),
	from_date DATE,
    to_date DATE,	
	PRIMARY KEY(emp_no,dept_no,from_date,to_date)
);

SELECT * FROM dept_manager;

CREATE TABLE data_salaries (
    emp_no INT REFERENCES data_employees(emp_no),
	salary INT,
	from_date DATE,
    to_date DATE,
	PRIMARY KEY(emp_no,salary,from_date,to_date)
);

SELECT * FROM data_salaries;








