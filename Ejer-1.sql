
--Pregunta #1
SELECT data_employees.emp_no,last_name, first_name, gender, salary 
FROM data_employees
JOIN data_salaries ON(data_employees.emp_no = data_salaries.emp_no);


--Pregunta #2
--SELECT COUNT(*) FROM (
--SELECT emp_no, first_name, last_name, gender
--FROM data_employees
--WHERE date_part('year', hire_date) = 1986
--) as a;

--Pregunta #2
SELECT emp_no, first_name, last_name, gender
FROM data_employees
WHERE date_part('year', hire_date) = 1986;



--Pregunta #3

SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name,
from_date, to_date
FROM dept_manager
JOIN data_department ON (dept_manager.dept_no = data_department.dept_no)
JOIN data_employees ON (dept_manager.emp_no = data_employees.emp_no);


--Pregunta #4

SELECT data_dept_emp.emp_no, last_name, first_name, dept_name
FROM data_employees
JOIN data_dept_emp ON (data_employees.emp_no = data_dept_emp.emp_no)
JOIN data_department ON (data_dept_emp.dept_no = data_department.dept_no);

--Pregunta #5

SELECT last_name, first_name
FROM data_employees
WHERE first_name = 'Hercules'AND last_name LIKE 'B%';

--Pregunta #6

SELECT  data_dept_emp.emp_no, last_name, first_name, data_department.dept_name
FROM data_employees
JOIN data_dept_emp ON (data_employees.emp_no = data_dept_emp.emp_no)
JOIN data_department ON (data_dept_emp.dept_no = data_department.dept_no)
WHERE data_department.dept_name = 'Sales';

--Pregunta #7
SELECT  data_dept_emp.emp_no, last_name, first_name, dept_name
FROM data_employees
JOIN data_dept_emp ON (data_employees.emp_no = data_dept_emp.emp_no)
JOIN data_department ON (data_dept_emp.dept_no = data_department.dept_no)
WHERE data_department.dept_name = 'Sales' OR  data_department.dept_name = 'Development';


--Pregunta #8
SELECT COUNT (data_employees.last_name) AS last_name, last_name
FROM data_employees
GROUP BY last_name
ORDER BY data_employees.last_name ASC
;








