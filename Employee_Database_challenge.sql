-- Deliverable 1

SELECT u.emp_no, u.first_name, u.last_name, ti.title , ti.from_date, ti.to_date
INTO retirement_titles
FROM retirement_info AS u
JOIN title AS ti
ON (u.emp_no=ti.emp_no);



SELECT DISTINCT ON (u.emp_no) u.emp_no, u.first_name, u.last_name, ti.title 
--INTO unique_titles
FROM updated_retirement_info AS u
JOIN title AS ti
ON (u.emp_no=ti.emp_no)
WHERE to_date ='9999-01-01'
ORDER BY u.emp_no, ti.title DESC;


-- Number of employees retiring by title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP By title;



-- Deliverable 2
SELECT distinct(e.emp_no), e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
--INTO mentorship_info
FROM employees AS e
JOIN department_employees AS de
ON (e.emp_no=de.emp_no)
JOIN title as ti
ON (e.emp_no=ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
;







