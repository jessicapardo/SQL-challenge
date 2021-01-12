-- Delete table if exists
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;


-- Create new table titles
CREATE TABLE titles (
	title_id VARCHAR(6) PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

-- Create new table employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(6) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(6) NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create new table salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create new table departments
CREATE TABLE departments (
	dept_no VARCHAR(6) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Create new table dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(6) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create new table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(6) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Verify successful data import
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;