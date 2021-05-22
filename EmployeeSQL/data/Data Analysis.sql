--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary
FROM employees
JOIN salaries AS salary
  ON employees.emp_no = salary.emp_no
  
--2. List first name, last name, and hire date for employees who were hired in 1986.

Select employees.first_name, employees.last_name, employees.hire_date
from employees
Where hire_date Between '1985-12-31' and '1987-01-01';

--3. List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name.

Select departments.dept_no, departments.dept_name, emp.emp_no, last_name, first_name
from departments
Join dept_manager as dept
	on departments.dept_no = dept.dept_no
Join employees as emp
	on dept.emp_no = emp.emp_no
	
--4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
Select employees.emp_no, employees.last_name, employees.first_name, dept_name
from employees
Join dept_emp as d_emp
	on employees.emp_no = d_emp.emp_no
Join departments as dept
	on d_emp.dept_no = dept.dept_no
	
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select employees.first_name, employees.last_name, employees.sex
from employees
Where first_name = 'Hercules'
Intersect
Select employees.first_name, employees.last_name, employees.sex
from employees
Where last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, dept_name
from employees
Join dept_emp as d_emp
	on employees.emp_no = d_emp.emp_no
Join departments as dept
	on d_emp.dept_no = dept.dept_no
Where dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, dept_name
from employees
Join dept_emp as d_emp
	on employees.emp_no = d_emp.emp_no
Join departments as dept
	on d_emp.dept_no = dept.dept_no
Where dept_name IN ('Sales', 'Development')

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT employees.last_name, COUNT(last_name) AS "Emp count"
FROM employees
GROUP BY last_name
ORDER BY "Emp count" DESC;
