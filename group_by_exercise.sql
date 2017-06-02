SELECT  title
from titles
GROUP BY title ASC;

SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name ASC;

SELECT
  last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;