-- ===================================================
-- Day 05
-- Topic: INSERT INTO and Adding Data
-- Author: Dhruv Gupta
-- ===================================================

-- Select the database
USE college_db;

-- Display current database
SELECT DATABASE();

-- ===================================================
-- Insert Single Record
-- ===================================================

INSERT INTO students
VALUES
(
101,
'Rahul Sharma',
20,
'B.Tech',
'2026-07-31',
8.75
);

-- ===================================================
-- Insert Another Record
-- ===================================================

INSERT INTO students
VALUES
(
102,
'Priya Verma',
21,
'BCA',
'2026-07-30',
9.10
);

-- ===================================================
-- Insert Multiple Records
-- ===================================================

INSERT INTO students
VALUES
(103,'Amit Singh',19,'BBA','2026-07-29',8.20),
(104,'Neha Gupta',22,'MBA','2026-07-28',9.30),
(105,'Rohan Patel',20,'B.Tech','2026-07-27',7.95);

-- ===================================================
-- Insert Record with NULL Value
-- ===================================================

INSERT INTO students
VALUES
(
106,
'Karan Mehta',
20,
'B.Tech',
'2026-08-01',
NULL
);

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Insert a student:
-- ID: 107
-- Name: Ankit Sharma
-- Age: 21
-- Course: BCA
-- Admission Date: 2026-08-02
-- CGPA: 8.60
INSERT INTO students
VALUES (107, 'Ankit Sharma', 21, 'BCA', '2026-08-02', 8.60);

-- Q2
-- Insert a student with NULL CGPA.
INSERT INTO students
VALUES (108, 'Sneha Reddy', 20, 'MBA', '2026-08-03', NULL);

-- Q3
-- Insert two students using a single INSERT statement.
INSERT INTO students
VALUES
(109, 'Isha Patel', 22, 'B.Tech', '2026-08-04', 8.80),
(110, 'Arjun Singh', 21, 'BCA', '2026-08-05', 8.40);

-- Q4
-- What happens if you insert another student with student_id = 101?
it will show an error because student_id is a primary key and it should be unique.

-- Q5
-- Why are text values enclosed in single quotes?
Text values are enclosed in single quotes to distinguish them from column names and other SQL keywords. 