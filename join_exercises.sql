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

SELECT
  d.dept_name as 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) as 'Name',
  s.salary as 'Salary'
  FROM employees as e
JOIN dept_emp as de on e.emp_no = de.emp_no
JOIN departments as d on de.dept_no = d.dept_no
join salaries as s on e.emp_no = s.emp_no
join dept_manager as dm on e.emp_no = dm.emp_no
where dm.to_date > curdate()
AND s.to_date > curdate()
ORDER BY d.dept_name;

SELECT
  CONCAT(e.first_name, ' ', e.last_name) as 'Employee Name',
  d.dept_name as 'Department Name',
  concat(em.first_name, ' ', em.last_name) as 'Manager Name'
FROM dept_emp as de
LEFT JOIN employees as e on e.emp_no = de.emp_no
LEFT JOIN departments as d on de.dept_no = d.dept_no
  LEFT JOIN dept_manager as dm on de.dept_no = dm.dept_no
  LEFT JOIN employees as em on dm.emp_no = em.emp_no
WHERE de.to_date > curdate()
and dm.to_date > curdate()
ORDER BY d.dept_name;


