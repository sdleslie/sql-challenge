select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
 	from employees e
 	left join salaries s on e.emp_no = s.emp_no;
 
 select e.first_name,
 	e.last_name,
	e.hire_date
	from employees e
	where
	e.hire_date >= '01-01-1986' and
	e.hire_date <= '12-31-1986';
	
select dm.dept_no,
 	d.dept_name,
	dm.emp_no,
	e.first_name,
	e.last_name
	from dept_manager dm
	left join departments d on dm.dept_no = d.dept_no
	left join employees e on dm.emp_no = e.emp_no;
	
select e.emp_no,
  	e.last_name,
	e.first_name,
 	d.dept_name
	from employees e
	left join dept_emp de on e.emp_no = de.emp_no
	left join departments d on de.dept_no = d.dept_no;
	
select e.first_name,
	e.last_name,
 	e.sex
	from employees e
	where
	e.first_name = 'Hercules' and
	left(e.last_name, 1) = 'B';
	
select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
	from employees e
	left join dept_emp de on e.emp_no = de.emp_no
	left join departments d on de.dept_no = d.dept_no
	where d.dept_name = 'Sales';
	
select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
	from employees e
	left join dept_emp de on e.emp_no = de.emp_no
	left join departments d on de.dept_no = d.dept_no
	where d.dept_name = 'Sales' OR d.dept_name = 'Development';
	
select e.last_name,
	count(e.emp_no)
	from employees e
	group by e.last_name
	order by count(e.emp_no) desc;
	
	
	
	
	
	
	
	