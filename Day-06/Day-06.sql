-- ===================================================
-- Day 06
-- Topic: SELECT Statement
-- Author: Dhruv Gupta
-- ===================================================

-- Select the database
USE college_db;

-- ===================================================
-- Display all records
-- ===================================================

SELECT *
FROM students;

-- ===================================================
-- Display specific columns
-- ===================================================

SELECT student_name, course
FROM students;

-- Display columns in a different order
SELECT course, student_name
FROM students;

-- ===================================================
-- Alias
-- ===================================================

SELECT student_name AS 'Student Name'
FROM students;

SELECT cgpa AS 'CGPA'
FROM students;

-- ===================================================
-- DISTINCT
-- ===================================================

SELECT DISTINCT course
FROM students;

-- ===================================================
-- LIMIT
-- ===================================================

SELECT *
FROM students
LIMIT 3;

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Display only Student Name and CGPA.
select student_name, cgpa
from students;

-- Q2
-- Display only Admission Date.
select admission_date
from students;

-- Q3
-- Display all unique courses.
select distinct course
from students;

-- Q4
-- Display the first two students.
select *
from students
limit 2;

-- Q5
-- Display Student Name as Name using an alias.
select student_name as Name
from students;