-- Deliverable 1
-- Part 1
-- Create table based on retirement employees and title
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.titles,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no; 

-- Deliverable 1
--Part 2
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
        rt.first_name,
        rt.last_name,
        rt.titles

INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, titles DESC;

-- Deliverable 1
-- Part 3
-- Retrieve number of employees per job title
Select COUNT(ut.emp_no),
    ut.titles
INTO retiring_titles
FROM unique_titles as ut
GROUP BY titles
ORDER BY COUNT(titles) DESC; 


-- Deliverable 2
-- Create Mentorship Eligibility Table
SELECT DISTINCT ON(e.emp_no)
       e.emp_no,
       e.first_name,
       e.last_name,
       e.birth_date,
       de.from_date,
       de.to_date,
       t.titles
INTO mentorship_eligibility
FROM employees as e
LEFT OUTER JOIN dept_emp as de
    ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles as t
    ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
