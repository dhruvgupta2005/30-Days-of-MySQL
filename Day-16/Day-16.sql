-- ============================================================
-- Day 16
-- Topic: SQL JOINs - INNER JOIN
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- CHECK TABLES
-- ============================================================

DESCRIBE students;
DESCRIBE courses;


-- ============================================================
-- ADD COURSE ID TO STUDENTS
-- ============================================================

ALTER TABLE students
ADD COLUMN course_id INT;


-- ============================================================
-- MAP EXISTING COURSES TO COURSE IDs
-- ============================================================

UPDATE students
SET course_id = CASE
    WHEN course = 'B.Tech' THEN 101
    WHEN course = 'BCA' THEN 102
    WHEN course = 'BBA' THEN 103
    WHEN course = 'MBA' THEN 104
END;


-- Check the mapping.

SELECT student_id, student_name, course, course_id
FROM students;


-- ============================================================
-- FIRST INNER JOIN
-- ============================================================

SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;


-- ============================================================
-- INNER JOIN + CGPA + ORDER BY
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;


-- ============================================================
-- INNER JOIN + WHERE
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'B.Tech';


-- ============================================================
-- INNER JOIN + WHERE + AND + ORDER BY
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'B.Tech'
AND s.cgpa > 8.00
ORDER BY s.cgpa DESC;


-- ============================================================
-- PRACTICE QUESTIONS
-- ============================================================

-- Q1
-- Display student name and course name using INNER JOIN.
SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;

-- Q2
-- Display student name, course name and CGPA using INNER JOIN.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;

-- Q3
-- Display students and their courses sorted by CGPA descending.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

-- Q4
-- Display only BCA students using INNER JOIN.
SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'BCA';

-- Q5
-- Display B.Tech students whose CGPA is greater than 8.00.
SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'B.Tech'
AND s.cgpa > 8.00;

-- Q6
-- Display student name and course name for all matching records.
SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;

-- Q7
-- Explain what happens when there is no matching course_id.
It will not display the student record in the result set because INNER JOIN only returns records that have matching values in both tables.

-- ============================================================
-- END OF DAY 16
-- ============================================================