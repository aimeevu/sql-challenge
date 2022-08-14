-- Data Analysis Queries for sql-challenge
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no AS employee_number
	, emp.last_name
	, emp.first_name
	, emp.sex
	, sal.salary
FROM "Employees" AS emp
INNER JOIN "Salaries" AS sal ON emp.emp_no = sal.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name
	, last_name
	, hire_date
FROM "Employees"
WHERE DATE_PART('year', hire_date) = 1986

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_man.dept_no AS department_number
	, dept.dept_name AS department
	, dept_man.emp_no AS employee_number
	, emp.last_name
	, emp.first_name
FROM "Dept_Manager" AS dept_man
INNER JOIN "Employees" AS emp ON dept_man.emp_no = emp.emp_no
INNER JOIN "Departments" AS dept ON dept_man.dept_no = dept.dept_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no
	, emp.last_name
	, emp.first_name
	, dept.dept_name
FROM "Employees" AS emp
INNER JOIN "Dept_Employee" AS dept_emp ON emp.emp_no = dept_emp.emp_no
INNER JOIN "Departments" AS dept ON dept_emp.dept_no = dept.dept_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."