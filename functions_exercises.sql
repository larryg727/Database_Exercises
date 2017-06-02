SELECT count(*),
  gender
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
GROUP BY gender;

SELECT concat(
  first_name,
    ' ',
  last_name)
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';


SELECT datediff(curdate(), hire_date),
  first_name,
  last_name,
  hire_date,
  birth_date
FROM employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;


SELECT count(last_name),
  first_name,
  last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY count(last_name) DESC;;
