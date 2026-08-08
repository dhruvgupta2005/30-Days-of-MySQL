-- ===================================================
-- Day 10
-- Topic: LIKE Operator and Wildcards
-- Author: Dhruv Gupta
-- ===================================================

-- Select the database
USE college_db;

-- ===================================================
-- Names starting with R
-- ===================================================

SELECT student_name
FROM students
WHERE student_name LIKE 'R%';

-- ===================================================
-- Names ending with a
-- ===================================================

SELECT student_name
FROM students
WHERE student_name LIKE '%a';

-- ===================================================
-- Names containing "an"
-- ===================================================

SELECT student_name
FROM students
WHERE student_name LIKE '%an%';

-- ===================================================
-- Courses starting with B
-- ===================================================

SELECT student_name, course
FROM students
WHERE course LIKE 'B%';

-- ===================================================
-- Names not starting with R
-- ===================================================

SELECT *
FROM students
WHERE student_name NOT LIKE 'R%';

-- ===================================================
-- Underscore wildcard
-- Exactly one character
-- ===================================================

SELECT *
FROM students
WHERE student_name LIKE 'R_h%';

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Display student names starting with A.
SELECT student_name
FROM students
WHERE student_name LIKE 'A%';
-- Q2
-- Display student names containing "ha".
SELECT student_name
FROM students
WHERE student_name LIKE '%ha%';
-- Q3
-- Display students whose names do not start with R.
SELECT *
FROM students
WHERE student_name NOT LIKE 'R%';
-- Q4
-- Display courses starting with B.
SELECT *
FROM students
WHERE course LIKE 'B%';
-- Q5
-- Display student names ending with a.
SELECT student_name
FROM students
WHERE student_name LIKE '%a';