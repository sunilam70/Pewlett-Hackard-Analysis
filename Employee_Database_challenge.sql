SELECT e.first_name, e.last_name, e.emp_no, ti.title
INTO updated_retirement_info
FROM employees AS e
JOIN title as ti
ON (e.emp_no=ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');



SELECT DISTINCT ON (u.emp_no) u.emp_no, u.first_name, u.last_name, ti.title , ti.from_date, ti.to_date
INTO updated_retirement_info_with_titles
FROM updated_retirement_info AS u
JOIN title AS ti 
ON (u.emp_no=ti.emp_no)
ORDER BY u.emp_no, ti.title DESC;

SELECT * FROM updated_retirement_info_with_titles;

-- Group by rating and aggregate the film_id count
SELECT rating, COUNT(film_id) AS "Total films"
FROM film
GROUP BY rating;


-- Number of employees retiring by title
SELECT title, COUNT(first_name)
INTO retiring_titles
FROM updated_retirement_info_with_titles
GROUP By title;

SELECT * FROM retiring_titles;


