-- ============================================================
-- Day 20
-- Topic: SELF JOIN
-- Author: Dhruv Gupta
-- ============================================================

USE college_db;


-- ============================================================
-- CREATE EMPLOYEES TABLE
-- ============================================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);


-- ============================================================
-- INSERT EMPLOYEE DATA
-- ============================================================

INSERT INTO employees (employee_id, employee_name, manager_id)
VALUES
(1, 'Rahul', NULL),
(2, 'Priya', 1),
(3, 'Amit', 1),
(4, 'Neha', 2),
(5, 'Karan', 2);


-- ============================================================
-- CHECK EMPLOYEES
-- ============================================================

SELECT *
FROM employees;


-- ============================================================
-- BASIC SELF JOIN
-- ============================================================

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;


-- ============================================================
-- SELF JOIN + WHERE
-- ============================================================

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL;


-- ============================================================
-- FIND TOP-LEVEL EMPLOYEES
-- ============================================================

SELECT
    e.employee_name AS Employee
FROM employees AS e
WHERE e.manager_id IS NULL;


-- ============================================================
-- FIND EMPLOYEES MANAGED BY RAHUL
-- ============================================================

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE m.employee_name = 'Rahul';


-- ============================================================
-- PRACTICE QUESTIONS + ANSWERS
-- ============================================================

-- Q1
-- What is a SELF JOIN?
-- Answer:
-- A SELF JOIN joins a table with itself to connect
-- or compare records within the same table.


-- Q2
-- Why do we use aliases in a SELF JOIN?
-- Answer:
-- Aliases distinguish the different logical uses or roles
-- of the same table.


-- Q3
-- What do e and m represent?
-- Answer:
-- e represents the employee role and m represents the
-- manager role. Both refer to the employees table.


-- Q4
-- Display Employee and Manager.

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;


-- Q5
-- Why use LEFT JOIN?
-- Answer:
-- LEFT JOIN keeps every employee, including top-level
-- employees who have no manager.


-- Q6
-- Find employees who do not have a manager.

SELECT
    e.employee_name AS Employee
FROM employees AS e
WHERE e.manager_id IS NULL;


-- Q7
-- Find employees managed by Rahul.

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE m.employee_name = 'Rahul';


-- Q8
-- Difference between normal JOIN and SELF JOIN.
-- Answer:
-- A normal JOIN generally connects different tables,
-- while a SELF JOIN joins a table with itself using aliases.


-- ============================================================
-- ADDITIONAL SELF JOIN EXAMPLE
-- ============================================================

SELECT
    e.employee_id,
    e.employee_name AS Employee,
    e.manager_id,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;


-- ============================================================
-- END OF DAY 20
-- ============================================================