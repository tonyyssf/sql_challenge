CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date Date NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	Sex VARCHAR(1) NOT NULL,
	hire_date Date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(10) NOT NULL	
);

CREATE TABLE dept_emp (
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) PRIMARY KEY,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER NOT NULL
);