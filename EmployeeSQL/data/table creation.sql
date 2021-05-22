Create table departments (
dept_no varchar(30),
dept_name varchar(30));
	
Create table dept_emp (
emp_no int,
dept_no varchar(30));

Create table dept_manager (
dept_no varchar(30),
emp_no int);

Create table employees (
emp_no int,
emp_title varchar(30),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar (30),
hire_date date);

create table salaries (
emp_no int,
salary int);

create table titles (
title_id varchar(30),
title varchar(30));