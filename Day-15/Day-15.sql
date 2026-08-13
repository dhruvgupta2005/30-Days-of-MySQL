-- ============================================================
-- Day 15
-- Topic: DISTINCT
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- DISTINCT
-- ============================================================

-- Display all unique courses.

SELECT DISTINCT course
FROM students;


-- ============================================================
-- DISTINCT with WHERE
-- ============================================================

-- Display unique courses of students whose CGPA is
-- greater than 8.00.

SELECT DISTINCT course
FROM students
WHERE cgpa > 8.00;


-- ============================================================
-- DISTINCT with ORDER BY
-- ============================================================

-- Display unique courses in alphabetical order.

SELECT DISTINCT course
FROM students
ORDER BY course ASC;


-- ============================================================
-- COUNT(DISTINCT)
-- ============================================================

-- Count the total number of different courses.

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;


-- Count the number of different courses among students
-- whose CGPA is greater than 8.00.

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students
WHERE cgpa > 8.00;


-- ============================================================
-- DISTINCT with Multiple Columns
-- ============================================================

-- Display unique combinations of course and age.

SELECT DISTINCT course, age
FROM students;


-- ============================================================
-- College Management System Queries
-- ============================================================

-- Display all available courses in alphabetical order.

SELECT DISTINCT course
FROM students
ORDER BY course ASC;


-- Count how many different courses are available.

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;


-- ============================================================
-- Practice Questions
-- ============================================================

-- Q1
-- Display all unique courses from the students table.
SELECT DISTINCT course
FROM students;

-- Q2
-- Count how many different courses are available.

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;

-- Q3
-- Display unique courses where CGPA is greater than 8.00.
SELECT DISTINCT course
FROM students
WHERE cgpa > 8.00;

-- Q4
-- Display unique courses in alphabetical order.

SELECT DISTINCT course
FROM students
ORDER BY course ASC;

-- Q5
-- Count the number of unique courses among students
-- whose CGPA is greater than 8.00.
SELECT COUNT(DISTINCT course) AS Total_courses
FROM students
WHERE cgpa > 8.00;

-- Q6
-- Write a query using DISTINCT to display all unique courses from the students table.
SELECT DISTINCT course
FROM students;

-- Q7
-- Explain the difference between COUNT(*) and
-- COUNT(DISTINCT course).
SELECT COUNT(*) AS Total_students
FROM students;

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;

-- ============================================================
-- END OF DAY 15
-- ============================================================