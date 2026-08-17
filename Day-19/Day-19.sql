-- ============================================================
-- Day 19
-- Topic: FULL OUTER JOIN concept + UNION
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- FULL OUTER JOIN-LIKE RESULT
-- ============================================================

SELECT
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id

UNION

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;


-- ============================================================
-- FULL OUTER JOIN-LIKE RESULT WITH CGPA
-- ============================================================

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id

UNION

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;


-- ============================================================
-- FULL OUTER JOIN-LIKE RESULT + ORDER BY
-- ============================================================

SELECT
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id

UNION

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id

ORDER BY course_name;


-- ============================================================
-- UNION
-- ============================================================

SELECT course
FROM students

UNION

SELECT course_name
FROM courses;


-- ============================================================
-- UNION ALL
-- ============================================================

SELECT course
FROM students

UNION ALL

SELECT course_name
FROM courses;


-- ============================================================
-- COLLEGE MANAGEMENT SYSTEM
-- ============================================================

-- Show every student and every course, including
-- unmatched records.

SELECT
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id

UNION

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;


-- ============================================================
-- PRACTICE QUESTIONS
-- ============================================================

-- Q1
-- Write a FULL OUTER JOIN-like query using LEFT JOIN, UNION and RIGHT JOIN.
SELECT
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id

UNION

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

-- Q2
-- Write the same query including CGPA.
SELECT 
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
    ON s.course_id = c.course_id

UNION

SELECT 
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
    ON s.course_id = c.course_id;

-- Q3
-- Write a UNION query that combines course values
-- from students and courses.
SELECT course_id FROM students
UNION
SELECT course_id FROM courses;

-- Q4
-- Write a UNION ALL query and observe the duplicates.
SELECT course_id FROM students
UNION ALL
SELECT course_id FROM courses;

-- Q5
-- Explain the difference between JOIN and UNION.
JOIN horizontally combines columns from multiple tables based on a related key between them. Conversely, a UNION vertically appends rows from multiple queries into a single result set with identical column structures.

-- Q6
-- Write a query that displays every student and every
-- course, including unmatched records.
SELECT 
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
    ON s.course_id = c.course_id

UNION

SELECT 
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
    ON s.course_id = c.course_id;

-- Q7
-- Explain why LEFT JOIN + UNION + RIGHT JOIN works
-- as a FULL OUTER JOIN-like solution in MySQL.
MySQL lacks native FULL OUTER JOIN syntax, so a LEFT JOIN gets all left records and a RIGHT JOIN gets all right records. Using UNION merges both sets while automatically removing the duplicate matched rows, perfectly reproducing a full outer join.

-- ============================================================
-- END OF DAY 19
-- ============================================================