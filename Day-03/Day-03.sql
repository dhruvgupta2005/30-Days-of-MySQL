-- ==========================================
-- Day 03
-- Topic: Working with Databases
-- Author: Dhruv Gupta
-- ==========================================

-- Display all databases
SHOW DATABASES;

-- Create a new database
CREATE DATABASE college_db;

-- Select the database
USE college_db;

-- Display the active database
SELECT DATABASE();

-- Delete a database
DROP DATABASE test_day2;

-- Verify databases
SHOW DATABASES;

-- ==========================================
-- Practice Questions
-- ==========================================

-- Q1
-- Create a database named library_db.
CREATE DATABASE library_db;

-- Q2
-- Create a database named hospital_db.
CREATE DATABASE hospital_db;

-- Q3
-- Switch to library_db.
USE library_db;


-- Q4
-- Display the current database.
SELECT DATABASE();

-- Q5
-- Delete hospital_db.
DROP DATABASE hospital_db;