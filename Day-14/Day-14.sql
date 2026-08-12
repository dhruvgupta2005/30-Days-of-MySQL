-- ============================================================
-- Day 14
-- Topic: HAVING Clause
-- Author: Dhruv Gupta
-- ============================================================

-- Select Database
USE college_db;

-- ============================================================
-- HAVING with COUNT()
-- ============================================================

-- Q1
-- Display courses having more than 2 students.

SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course
HAVING COUNT(*) > 2;

-- ============================================================
-- HAVING with AVG()
-- ============================================================

-- Q2
-- Display courses whose average CGPA is greater than 8.00.

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
HAVING AVG(cgpa) > 8.00;

-- ============================================================
-- HAVING with MAX()
-- ============================================================

-- Q3
-- Display courses where the highest CGPA is greater than 9.00.

SELECT course, MAX(cgpa) AS Highest_CGPA
FROM students
GROUP BY course
HAVING MAX(cgpa) > 9.00;

-- ============================================================
-- HAVING with COUNT()
-- ============================================================

-- Q4
-- Display courses having at least 2 students.

SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course
HAVING COUNT(*) >= 2;

-- ============================================================
-- WHERE + GROUP BY + HAVING
-- ============================================================

-- Q5
-- Display courses having at least 2 students
-- whose CGPA is greater than 7.00.

SELECT course, COUNT(*) AS Total_students
FROM students
WHERE cgpa > 7.00
GROUP BY course
HAVING COUNT(*) >= 2;

-- ============================================================
-- Additional Practice
-- ============================================================

-- Display courses whose average CGPA is at least 8.50.

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
HAVING AVG(cgpa) >= 8.50;

-- Display courses where the lowest CGPA is at least 7.00.

SELECT course, MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course
HAVING MIN(cgpa) >= 7.00;
