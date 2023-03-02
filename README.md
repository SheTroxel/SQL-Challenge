# SQL-Challenge
As part of the SQL challenge homework were provided with the following scenario:


It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Reviewing & Organizing the Data
In reviewing the CVS files, I've put together an Entity Relationship Diagram to illustrate the different files and to assist with my queries. The Department_Employees.CSV file

![ERD image](https://github.com/SheTroxel/SQL-Challenge/blob/main/pewlett_hackard_employeeDB_Schema.png)

## Data Analysis
After tables were created and CSV files imported into Postgres SQL, I was able to run queries to meet the following requests: 

1. List the employee number, last name, first name, sex, and salary of each employee.
Data has been provided in a CSV file located here: 

![Employees](https://github.com/SheTroxel/SQL-Challenge/blob/main/data_files/employee_list_one.csv)

2. List the first name, last name, and hire date for the employees who were hired in 1986.
Data has been provided in a CSV file located here: 

![Employees Hired in 1986](https://github.com/SheTroxel/SQL-Challenge/blob/main/data_files/hired_1986.csv)

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
Data has been provided in a CSV file located here:

![department managers](https://github.com/SheTroxel/SQL-Challenge/blob/main/data_files/department_mgrs.csv)

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Data has been provided in a CSV file located here:

![Employees by Department Number](https://raw.githubusercontent.com/SheTroxel/SQL-Challenge/main/data_files/department_no_employees.csv)

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Data has been provided in a CSV file located here:

![Employees_named Hercules](https://github.com/SheTroxel/SQL-Challenge/blob/main/data_files/Hercules_and_Bs.csv)

6. List each employee in the Sales department, including their employee number, last name, and first name.
Data has been provided in a CSV file located here:

![sales dept employees](https://github.com/SheTroxel/SQL-Challenge/blob/main/data_files/sales_dept_employees.csv)

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Data has been provided in a CSV file located here:

![sales and development](https://raw.githubusercontent.com/SheTroxel/SQL-Challenge/main/data_files/sales_and_development.csv)

10. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Data has been provided in a CSV file located here:

![Name frequency counts](https://github.com/SheTroxel/SQL-Challenge/blob/main/data_files/frequency_counts.csv)
