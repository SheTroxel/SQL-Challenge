-- Query employee number, last name, first name, sex and salary of each employee -

-- Join Salaries to Employees Table to obtain salary info ------------------------
SELECT Employee.emp_no
	, last_name
	, first_name
	, sex
	, salary
FROM Employee 
JOIN Salaries
	ON Employee.emp_no = Salaries.emp_no;
	
-- Query first name, last name and hire date for employees hired in 1986-----------	
SELECT first_name
	, last_name
	, hire_date
FROM Employee
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31';

-- Query the manager of each department, their department number, department name, 
-- employee number, last name, and first name -------------------------------------	
SELECT dm.dept_no
	, dn.dept_name
	, em.emp_no
	, em.last_name
	, em.first_name
FROM Department_Manager AS dm
JOIN Employee AS em ON dm.emp_no = em.emp_no
JOIN Department_Name AS dn ON dn.dept_no = dm.dept_no
;

-- Query the department number for each employee along with that employee’s employee--
-- number, last name, first name, and department name -------------------------------
SELECT dn.dept_no
	, em.emp_no
	, em.last_name
	, em.first_name
	, dn.dept_name
FROM Department_Employees AS de
JOIN Employee AS em ON de.emp_no = em.emp_no
JOIN Department_Name AS dn ON de.dept_no = dn.dept_no
;

-- Query the first name, last name, and sex of each employee whose first name is Hercules and 
-- whose last name begins with the letter B -------------------------------------------
SELECT first_name, last_name, sex
FROM Employee
WHERE first_name = 'Hercules' 
	AND last_name LIKE 'B%'
;

-- Query each employee in the Sales department, including their employee number, last name, 
-- and first name ----------------------------------------------------------------------
SELECT dn.dept_name
	, em.emp_no
	, em.last_name
	, em.first_name
FROM Employee AS em
JOIN Department_Employees AS de ON de.emp_no = em.emp_no
JOIN Department_Name AS dn ON de.dept_no = dn.dept_no
WHERE dn.dept_name = 'Sales'
;

-- Qeury and list each employee in the Sales and Development departments, including their  
-- employee number,last name, first name, and department name --------------------------
SELECT dn.dept_name
	, em.emp_no
	, em.last_name
	, em.first_name
FROM Employee AS em
JOIN Department_Employees AS de ON de.emp_no = em.emp_no
JOIN Department_Name AS dn ON de.dept_no = dn.dept_no
WHERE dn.dept_name IN ('Development', 'Sales')
;

-- List the frequency counts, in descending order, of all the employee last names -------
SELECT last_name, COUNT (*)
FROM Employee
GROUP BY last_name
ORDER BY COUNT(*) DESC
;
