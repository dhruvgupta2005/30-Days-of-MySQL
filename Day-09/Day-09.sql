-- ===================================================
-- Day 09
-- Topic: BETWEEN, IN and NOT IN
-- Author: Dhruv Gupta
-- ===================================================

-- Select Database
USE college_db;

-- ===================================================
-- BETWEEN
-- ===================================================

-- Students aged between 20 and 21
SELECT *
FROM students
WHERE age BETWEEN 20 AND 21;

-- ===================================================
-- NOT BETWEEN
-- ===================================================

SELECT *
FROM students
WHERE age NOT BETWEEN 20 AND 21;

-- ===================================================
-- IN
-- ===================================================

SELECT *
FROM students
WHERE course IN ('B.Tech','MBA');

-- ===================================================
-- NOT IN
-- ===================================================

SELECT *
FROM students
WHERE course NOT IN ('B.Tech','BCA');

-- ===================================================
-- Display Student Name between Age 19 and 20
-- ===================================================

SELECT student_name
FROM students
WHERE age BETWEEN 19 AND 20;

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Display Student Name and Course
-- for students studying B.Tech or BBA.
SELECT student_name, course
FROM students
WHERE course IN ('B.Tech', 'BBA');
-- Q2
-- Display students whose age is
-- between 19 and 22.
SELECT *
FROM students
WHERE age BETWEEN 19 AND 22;

-- Q3
-- Display students except B.Tech students.
SELECT *
FROM students
WHERE course NOT IN ('B.Tech');

-- Q4
-- Display students whose age is
-- not between 20 and 22.
SELECT *
FROM students
WHERE age NOT BETWEEN 20 AND 22;

-- Q5
-- Display students from BCA and MBA.
SELECT *
FROM students
WHERE course IN ('BCA', 'MBA');