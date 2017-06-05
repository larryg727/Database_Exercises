select d.dept_name as 'Department Name',
  concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
  JOIN dept_manager as dm ON e.emp_no = dm.emp_no
  JOIN departments as d ON dm.dept_no = d.dept_no
where dm.to_date > curdate();



select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
  JOIN dept_manager as dm ON e.emp_no = dm.emp_no
  JOIN departments as d ON dm.dept_no = d.dept_no
where dm.to_date > curdate()
AND e.gender = 'f';


SELECT t.title as 'Title',
  count(*) as 'Count'
from titles as t
join dept_emp as de on t.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Customer Service'
  AND t.to_date > curdate()
GROUP BY t.title;


