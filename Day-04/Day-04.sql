-- ===================================================
-- Day 04
-- Topic: Tables & Data Types
-- Author: Dhruv Gupta
-- ===================================================

-- Select the database
USE college_db;

-- Create Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(50),
    admission_date DATE,
    cgpa DECIMAL(3,2)
);

-- Display all tables
SHOW TABLES;

-- Display table structure
DESCRIBE students;

-- Short form of DESCRIBE
DESC students;

-- ===================================================
-- Practice Questions
-- ===================================================

-- Q1
-- Create a table named teachers.
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50) NOT NULL,
    subject VARCHAR(50),
    hire_date DATE
);
-- Q2
-- Create a table named courses.
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT
);
-- Q3
-- Display all tables inside college_db.
SHOW TABLES;
-- Q4
-- Display the structure of the students table.
describe students;
-- Q5
-- Which command shows all tables?
SHOW TABLES;