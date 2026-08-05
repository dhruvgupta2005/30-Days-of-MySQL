-- ===================================================
-- Day 08
-- Topic: Logical Operators (AND, OR, NOT)
-- Author: Dhruv Gupta
-- ===================================================

-- Select the database
USE college_db;

-- ===================================================
-- AND Operator
-- ===================================================

SELECT *
FROM students
WHERE course = 'B.Tech'
AND cgpa > 8.50;

-- ===================================================
-- OR Operator
-- ===================================================

SELECT *
FROM students
WHERE course = 'BCA'
OR course = 'MBA';

-- ===================================================
-- NOT Operator
-- ===================================================

SELECT *
FROM students
WHERE NOT course = 'B.Tech';

-- ===================================================
-- Multiple Conditions
-- ===================================================

SELECT *
FROM students
WHERE age = 20
AND course = 'B.Tech';

SELECT *
FROM students
WHERE age = 20
OR cgpa > 9.00;

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Display the names of students who are 20 years old
-- and studying B.Tech.
select student_name
from students
where age = 20
AND course = 'B.Tech';

-- Q2
-- Display students who are studying either BCA or MBA.
select *
from students
where course = 'BCA'
OR course = 'MBA';

-- Q3
-- Display all students except those studying B.Tech.
select *
from students
where NOT course = 'B.Tech';

-- Q4
-- Display Student Name and CGPA of students
-- whose CGPA is greater than 8.50
-- and age is 21.
select student_name, cgpa
from students
where cgpa > 8.50
AND age = 21;

-- Q5
-- Display students whose age is 20
-- or whose CGPA is greater than 9.00.
select *
from students       
where age = 20          
OR cgpa > 9.00;