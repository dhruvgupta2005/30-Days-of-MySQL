-- ============================================================
-- Day 17
-- Topic: LEFT JOIN
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- BASIC LEFT JOIN
-- ============================================================

-- Display all students and their course information.

SELECT
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id;


-- ============================================================
-- LEFT JOIN + CGPA + ORDER BY
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;


-- ============================================================
-- LEFT JOIN + WHERE
-- ============================================================

-- Display students whose CGPA is greater than 8.00.

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.cgpa > 8.00;


-- ============================================================
-- FIND STUDENTS WITH NO MATCHING COURSE
-- ============================================================

-- If no matching course exists, columns from courses
-- become NULL.

SELECT
    s.student_name,
    s.course_id
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_id IS NULL;


-- ============================================================
-- LEFT JOIN + ORDER BY + LIMIT
-- ============================================================

-- Display the top 3 students by CGPA.

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC
LIMIT 3;


-- ============================================================
-- RIGHT JOIN - BASIC EXAMPLE
-- ============================================================

-- Keep all courses and matching students.

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;


-- ============================================================
-- PRACTICE QUESTIONS
-- ============================================================

-- Q1
-- Display student name, course name and CGPA using LEFT JOIN.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id;

-- Q2
-- Display all students sorted by CGPA from highest to lowest.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

-- Q3
-- Display students whose CGPA is greater than 8.00.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.cgpa > 8.00;

-- Q4
-- Find students whose course_id has no matching course.
SELECT
    s.student_name,
    s.course_id
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_id IS NULL;

-- Q5
-- Display the top 3 students by CGPA with their course names.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC
LIMIT 3;

-- Q6
-- Write a RIGHT JOIN that displays all courses and
-- matching students.
SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

-- Q7
-- Explain the difference between INNER JOIN and LEFT JOIN.
Inner Join returns only the rows that have matching values in both tables, while Left Join returns all rows from the left table and the matched rows from the right table. If there is no match, NULL values are returned for columns from the right table.

-- ============================================================
-- END OF DAY 17
-- ============================================================