--DROP TABLE IF EXISTS Employee;
--DROP TABLE IF EXISTS Department_Manager;
--DROP TABLE IF EXISTS Salaries;
--DROP TABLE IF EXISTS Titles;
--DROP TABLE IF EXISTS Department_Name;
--DROP TABLE IF EXISTS Department_Employees;

-- Create Table Schema for Pewlett Hackard Employees --------------------

-- Create Table For Employee Information---------------------------------

CREATE TABLE Employee (
    emp_no int PRIMARY KEY NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date date NOT NULL,
	first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL
  );
-- ------------------------------------------------------------------------
-- Create Table For Department Manager Info-------------------------------- 

CREATE TABLE Department_Manager (
    dept_no varchar NOT NULL,
    emp_no int NOT NULL
);
-- -----------------------------------------------------------------------
-- Create Table For Salary Info ------------------------------------------

CREATE TABLE Salaries (
    emp_no int NOT NULL,
    salary int NOT NULL
	);
	
-- -----------------------------------------------------------------------
-- Create Table For Titles -----------------------------------------------

CREATE TABLE Titles (
    title_id varchar,
    title varchar
	);

-- -----------------------------------------------------------------------
-- Create Table by Department --------------------------------------------

CREATE TABLE Department_Name (
    dept_no varchar PRIMARY KEY NOT NULL,
    dept_name varchar
	);

-- -----------------------------------------------------------------------
-- -----------------------------------------------------------------------
CREATE TABLE Department_Employees (
	emp_no int,
    dept_no varchar,
    PRIMARY KEY (emp_no, dept_no)
	);

