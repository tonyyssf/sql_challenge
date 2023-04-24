SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees as e
JOIN salaries as s
on e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_manager as dm
ON d.dept_no = dm.dept_no
JOIN employees as e
ON dm.emp_no = e.emp_no;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no;

SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
SELECT e.emp_no, e.last_name, e.first_name
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
	OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name) as Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;