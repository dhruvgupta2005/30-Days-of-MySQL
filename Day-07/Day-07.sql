-- ===================================================
-- Day 07
-- Topic: WHERE Clause
-- Author: Dhruv Gupta
-- ===================================================

-- Select the database
USE college_db;

-- ===================================================
-- Display all students
-- ===================================================

SELECT *
FROM students;

-- ===================================================
-- Students studying B.Tech
-- ===================================================

SELECT *
FROM students
WHERE course = 'B.Tech';

-- ===================================================
-- Students whose age is 20
-- ===================================================

SELECT *
FROM students
WHERE age = 20;

-- ===================================================
-- Students having CGPA greater than 8.50
-- ===================================================

SELECT *
FROM students
WHERE cgpa > 8.50;

-- ===================================================
-- Display Student Name and CGPA
-- ===================================================

SELECT student_name, cgpa
FROM students
WHERE cgpa > 8.00;

-- ===================================================
-- Students whose CGPA is NULL
-- ===================================================

SELECT *
FROM students
WHERE cgpa IS NULL;

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Display only the student names of students who are 20 years old.
select student_name
from students   
where age = 20; 
-- Q2
-- Display only BCA students.
select *
from students
where course = 'BCA';
-- Q3
-- Display students whose CGPA is less than 8.50.
select *        
from students
where cgpa < 8.50;
-- Q4
-- Display Student Name and Course of students with CGPA greater than 8.50.
select student_name, course
from students
where cgpa > 8.50;
-- Q5
-- Display students whose admission date is '2026-08-01'.
select *
from students   
where admission_date = '2026-08-01';