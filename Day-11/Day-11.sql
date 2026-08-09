
---

# 💻 `Day-11/Day-11.sql`

```sql
-- ============================================================
-- Day 11
-- Topic: ORDER BY and LIMIT
-- Author: Dhruv Gupta
-- ============================================================


-- Select the database
USE college_db;


-- ============================================================
-- ORDER BY
-- ============================================================

-- Q1: Display all students sorted by age from youngest to oldest.

SELECT *
FROM students
ORDER BY age ASC;

-- ============================================================
-- DESCENDING ORDER
-- ============================================================

-- Q2: Display all students sorted by CGPA from highest to lowest.

SELECT *
FROM students
ORDER BY cgpa DESC;


-- ============================================================
-- SELECTED COLUMNS + ORDER BY + LIMIT
-- ============================================================

-- Q3: Display the top 3 students according to CGPA.

SELECT student_name, cgpa
FROM students
ORDER BY cgpa DESC
LIMIT 3;


-- ============================================================
-- WHERE + ORDER BY
-- ============================================================

-- Q4: Display B.Tech students sorted by CGPA
--     from highest to lowest.

SELECT student_name, course, cgpa
FROM students
WHERE course = 'B.Tech'
ORDER BY cgpa DESC;


-- ============================================================
-- WHERE + ORDER BY + LIMIT
-- ============================================================

-- Q5: Display the top 2 B.Tech students according to CGPA.

SELECT student_name, course, cgpa
FROM students
WHERE course = 'B.Tech'
ORDER BY cgpa DESC
LIMIT 2;


-- ============================================================
-- ADDITIONAL PRACTICE
-- ============================================================

-- Practice 1:
-- Display students alphabetically by their names.

SELECT *
FROM students
ORDER BY student_name ASC;


-- Practice 2:
-- Display the 5 youngest students.

SELECT student_name, age
FROM students
ORDER BY age ASC
LIMIT 5;


-- Practice 3:
-- Display students with CGPA greater than 8,
-- sorted from highest to lowest.

SELECT student_name, cgpa
FROM students
WHERE cgpa > 8.00
ORDER BY cgpa DESC;


-- Practice 4:
-- Display the student with the highest CGPA.

SELECT student_name, cgpa
FROM students
ORDER BY cgpa DESC
LIMIT 1;


-- Practice 5:
-- Display the 3 students with the lowest CGPA.

SELECT student_name, cgpa
FROM students
ORDER BY cgpa ASC
LIMIT 3;


-- ============================================================
-- END OF DAY 11
-- ============================================================