-- ============================================================
-- Day 21
-- Topic: SUBQUERIES
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- SUBQUERY WITH AVG()
-- ============================================================

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);


-- ============================================================
-- SUBQUERY WITH MAX()
-- ============================================================

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM students
);


-- ============================================================
-- SUBQUERY WITH MIN()
-- ============================================================

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MIN(cgpa)
    FROM students
);


-- ============================================================
-- SUBQUERY WITH COUNT()
-- ============================================================

SELECT *
FROM students
WHERE (
    SELECT COUNT(*)
    FROM students
) > 5;


-- ============================================================
-- MULTI-VALUE SUBQUERY WITH IN
-- ============================================================

SELECT
    student_name,
    course
FROM students
WHERE course IN (
    SELECT course_name
    FROM courses
);


-- ============================================================
-- MULTI-VALUE SUBQUERY WITH NOT IN
-- ============================================================

SELECT
    course_name
FROM courses
WHERE course_name NOT IN (
    SELECT course
    FROM students
);


-- ============================================================
-- SUBQUERY IN SELECT
-- ============================================================

SELECT
    student_name,
    cgpa,
    (SELECT AVG(cgpa) FROM students) AS Average_CGPA
FROM students;


-- ============================================================
-- SUBQUERY IN FROM / DERIVED TABLE
-- ============================================================

SELECT *
FROM (
    SELECT
        student_name,
        cgpa
    FROM students
    WHERE cgpa > 8.00
) AS high_scorers;


-- ============================================================
-- PRACTICE QUESTIONS + ANSWERS
-- ============================================================

-- Q1
-- What is a subquery?
-- Answer:
-- A subquery is a query written inside another SQL query.


-- Q2
-- Identify the subquery:
--
-- SELECT student_name
-- FROM students
-- WHERE cgpa > (
--     SELECT AVG(cgpa)
--     FROM students
-- );
--
-- Answer:
-- SELECT AVG(cgpa) FROM students
-- is the inner/subquery.


-- Q3
-- Find students whose CGPA is greater than the average CGPA.

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);


-- Q4
-- Find students with the highest CGPA.

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM students
);


-- Q5
-- Find students with the lowest CGPA.

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MIN(cgpa)
    FROM students
);


-- Q6
-- Difference between single-value and multi-value subqueries.
-- Answer:
-- A single-value subquery returns one value and can be used
-- with operators such as =, >, <, >= and <=.
--
-- A multi-value subquery returns multiple values and can be
-- used with IN.


-- Q7
-- Why do we use IN with multiple returned values?
-- Answer:
-- IN checks whether a value matches any value returned
-- by the subquery.


-- Q8
-- Difference between JOIN and subquery.
-- Answer:
-- JOIN combines related tables using a join condition,
-- while a subquery uses the result of another query.


-- ============================================================
-- ADDITIONAL PRACTICE
-- ============================================================

-- Find students whose CGPA equals the highest CGPA.

SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM students
);


-- Find courses not present in the students table.

SELECT
    course_name
FROM courses
WHERE course_name NOT IN (
    SELECT course
    FROM students
);


-- Display every student with the overall average CGPA.

SELECT
    student_name,
    cgpa,
    (SELECT AVG(cgpa) FROM students) AS Average_CGPA
FROM students;


-- ============================================================
-- END OF DAY 21
-- ============================================================
