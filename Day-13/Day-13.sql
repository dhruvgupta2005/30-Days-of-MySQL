
### `Day-13/Day-13.sql`

```sql
-- ============================================================
-- Day 13
-- Topic: GROUP BY
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- COUNT() with GROUP BY
-- ============================================================

-- Count the number of students in each course.

SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course;


-- ============================================================
-- AVG() with GROUP BY
-- ============================================================

-- Find the average CGPA of each course.

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;


-- ============================================================
-- MAX() with GROUP BY
-- ============================================================

-- Find the highest CGPA in each course.

SELECT course, MAX(cgpa) AS Highest_CGPA
FROM students
GROUP BY course;


-- ============================================================
-- MIN() with GROUP BY
-- ============================================================

-- Find the lowest CGPA in each course.

SELECT course, MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course;


-- ============================================================
-- Multiple Aggregate Functions with GROUP BY
-- ============================================================

-- Create a complete course-wise summary.

SELECT
    course,
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA,
    MAX(cgpa) AS Highest_CGPA,
    MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course;


-- ============================================================
-- WHERE + GROUP BY
-- ============================================================

-- Count students in each course whose CGPA is greater than 8.

SELECT
    course,
    COUNT(*) AS Total_students
FROM students
WHERE cgpa > 8.00
GROUP BY course;


-- Find the average CGPA of students with CGPA greater than 8,
-- grouped by course.

SELECT
    course,
    AVG(cgpa) AS Average_CGPA
FROM students
WHERE cgpa > 8.00
GROUP BY course;


-- ============================================================
-- GROUP BY + ORDER BY
-- ============================================================

-- Display courses from highest average CGPA to lowest.

SELECT
    course,
    AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
ORDER BY Average_CGPA DESC;


-- ============================================================
-- COLLEGE MANAGEMENT SYSTEM TASK
-- ============================================================

-- Create a course-wise academic report.

SELECT
    course,
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;


-- ============================================================
-- PRACTICE QUESTIONS
-- ============================================================

-- Q1
-- Count the number of students in each course.
SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course;

-- Q2
-- Find the average CGPA of each course.
SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;

-- Q3
-- Find the highest CGPA in each course.
SELECT course, MAX(cgpa) AS Highest_CGPA
FROM students
GROUP BY course;

-- Q4
-- Find the lowest CGPA in each course.
SELECT course, MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course;

-- Q5
-- Display Course, Total Students and Average CGPA
-- for every course.
SELECT
    course,
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA  
FROM students
GROUP BY course; 

-- Q6
-- Display courses ordered by their average CGPA
-- from highest to lowest.
SELECT
    course,
    AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
ORDER BY Average_CGPA DESC;

-- Q7
-- Display the number of students in each course,
-- considering only students whose CGPA is greater than 8.00.
SELECT
    course,
    COUNT(*) AS Total_students
FROM students
WHERE cgpa > 8.00
GROUP BY course;


-- ============================================================
-- END OF DAY 13
-- ============================================================