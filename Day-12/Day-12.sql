
---

# `Day-12/Day-12.sql`

```sql
-- ============================================================
-- Day 12
-- Topic: Aggregate Functions
-- Author: Dhruv Gupta
-- ============================================================


-- ------------------------------------------------------------
-- Select Database
-- ------------------------------------------------------------

USE college_db;


-- ============================================================
-- 1. COUNT()
-- ============================================================

-- COUNT(*) counts the total number of rows in the table.

SELECT COUNT(*)
FROM students;


-- Giving the result a meaningful temporary name.

SELECT COUNT(*) AS Total_students
FROM students;


-- COUNT(column) counts only the rows where that column
-- contains a value (NULL values are ignored).

SELECT COUNT(cgpa) AS Students_with_CGPA
FROM students;


-- ============================================================
-- 2. AVG()
-- ============================================================

-- AVG() calculates the average value of a numeric column.

SELECT AVG(cgpa)
FROM students;


-- Using AS to make the output easier to understand.

SELECT AVG(cgpa) AS Average_CGPA
FROM students;


-- AVG() can also be combined with WHERE.

-- This calculates the average CGPA only for B.Tech students.

SELECT AVG(cgpa) AS Average_CGPA
FROM students
WHERE course = 'B.Tech';


-- ============================================================
-- 3. MAX()
-- ============================================================

-- MAX() returns the highest value from a column.

SELECT MAX(cgpa) AS Highest_CGPA
FROM students;


-- ============================================================
-- 4. MIN()
-- ============================================================

-- MIN() returns the lowest value from a column.

SELECT MIN(cgpa) AS Lowest_CGPA
FROM students;


-- ============================================================
-- 5. SUM()
-- ============================================================

-- SUM() adds all numeric values in a column.
-- We don't have a suitable fees/marks column in our current
-- students table, so this is only an example.

-- Example:
-- SELECT SUM(fees) AS Total_fees
-- FROM students;


-- ============================================================
-- 6. Multiple Aggregate Functions
-- ============================================================

-- We can use multiple aggregate functions in one SELECT.

SELECT
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA,
    MAX(cgpa) AS Highest_CGPA,
    MIN(cgpa) AS Lowest_CGPA
FROM students;


-- ============================================================
-- 7. Aggregate Function + WHERE
-- ============================================================

-- Find the highest CGPA among B.Tech students.

SELECT MAX(cgpa) AS Highest_BTech_CGPA
FROM students
WHERE course = 'B.Tech';


-- Find the lowest CGPA among B.Tech students.

SELECT MIN(cgpa) AS Lowest_BTech_CGPA
FROM students
WHERE course = 'B.Tech';


-- ============================================================
-- PRACTICE QUESTIONS
-- ============================================================

-- Q1. Find the total number of students.
Select COUNT(*) AS Total_students
From students;

-- Q2. Find the average CGPA of all students.
Select AVG(cgpa) AS Average_CGPA
From students;

-- Q3. Find the highest CGPA in the students table.
Select MAX(cgpa) AS Highest_CGPA
From students;

-- Q4. Find the lowest CGPA among B.Tech students.
Select MIN(cgpa) AS Lowest_BTech_CGPA
From students
WHERE course = 'B.Tech';

-- Q5. Display the total number of students and the average CGPA
--     in the same query.
Select COUNT(*) AS Total_students, AVG(cgpa) AS Average_CGPA
From students;


-- ============================================================
-- END OF DAY 12
-- ============================================================