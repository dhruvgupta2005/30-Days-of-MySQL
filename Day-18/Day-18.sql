-- ============================================================
-- Day 18
-- Topic: RIGHT JOIN
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;

-- Basic RIGHT JOIN
SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

-- RIGHT JOIN with multiple columns
SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

-- RIGHT JOIN + ORDER BY
SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

-- Find courses with no students
SELECT
    c.course_id,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

-- RIGHT JOIN + WHERE
SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.cgpa > 8.00;

-- Equivalent LEFT JOIN by reversing table order
SELECT
    s.student_name,
    c.course_name
FROM courses AS c
LEFT JOIN students AS s
ON c.course_id = s.course_id;

-- College Management System:
-- Find courses with no enrolled students
SELECT
    c.course_id,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

-- ============================================================
-- PRACTICE QUESTIONS
-- ============================================================

-- Q1
-- Write a RIGHT JOIN that displays course name and student name.
SELECT
    c.course_name,
    s.student_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

-- Q2
-- Write a RIGHT JOIN that displays course name, student name
-- and CGPA.
SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

-- Q3
-- Find courses that currently have no students.
SELECT
    c.course_id,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

-- Q4
-- Display courses and students sorted by CGPA descending.
SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

-- Q5
-- Display courses and students where CGPA is greater than 8.00.
SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.cgpa > 8.00;

-- Q6
-- Rewrite a RIGHT JOIN using LEFT JOIN by reversing
-- the table order.
SELECT
    s.student_name,
    c.course_name
FROM courses AS c
LEFT JOIN students AS s
ON c.course_id = s.course_id;

-- Q7
-- Explain the difference between INNER JOIN, LEFT JOIN
-- and RIGHT JOIN.

-- INNER JOIN: Returns only the rows that have matching values in both tables.
-- LEFT JOIN: Returns all rows from the left table and the matched rows from the right table.
-- RIGHT JOIN: Returns all rows from the right table and the matched rows from the left table.

-- ============================================================
-- END OF DAY 18
-- ============================================================
