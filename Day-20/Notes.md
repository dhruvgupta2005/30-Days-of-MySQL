Day 20 - SELF JOIN

Objective

Learn how a table can be joined with itself using a SELF JOIN.

A SELF JOIN is useful when records in the same table have a relationship with other records in that same table.

Examples:

Employees and managers

Employees and supervisors

Students and mentors

Categories and parent categories

Courses and prerequisite courses

What is a SELF JOIN?

A SELF JOIN means joining a table with itself.

For example:

employees
    |
    +-- employee_id
    |
    +-- manager_id

The manager_id can refer to another employee_id in the same table.

So we can use:

employees -> employees

The table is the same, but different aliases represent different roles.

Creating the Employees Table

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

Insert sample data:

INSERT INTO employees (employee_id, employee_name, manager_id)
VALUES
(1, 'Rahul', NULL),
(2, 'Priya', 1),
(3, 'Amit', 1),
(4, 'Neha', 2),
(5, 'Karan', 2);

Relationship:

Rahul
├── Priya
│   ├── Neha
│   └── Karan
└── Amit

Why Do We Need Aliases?

When joining a table with itself, MySQL needs to distinguish between the two uses of the same table.

employees AS e
employees AS m

Here:

e -> employee
m -> manager

Both refer to the same physical table, but they represent different roles.

Basic SELF JOIN

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;

Result:

Employee | Manager
Rahul    | NULL
Priya    | Rahul
Amit     | Rahul
Neha     | Priya
Karan    | Priya

Understanding the ON Condition

The important condition is:

ON e.manager_id = m.employee_id

It means:

Find the employee whose employee_id matches the current employee's manager_id.

Example:

Priya
manager_id = 1
       ↓
employee_id = 1
       ↓
Rahul

Therefore:

Priya -> Rahul

Why LEFT JOIN?

We use LEFT JOIN because Rahul has no manager:

manager_id = NULL

Using LEFT JOIN keeps Rahul in the result.

If we used INNER JOIN, Rahul would not appear because there is no matching manager.

SELF JOIN with WHERE

To show only employees who have a manager:

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL;

Finding Top-Level Employees

Employees without a manager:

SELECT
    e.employee_name AS Employee
FROM employees AS e
WHERE e.manager_id IS NULL;

In our sample data, Rahul is a top-level employee.

Finding Employees Managed by Rahul

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE m.employee_name = 'Rahul';

Result:

Priya | Rahul
Amit  | Rahul

SELF JOIN vs Normal JOIN

Normal JOIN

A normal JOIN usually connects different tables:

students
    +
courses

SELF JOIN

A SELF JOIN uses the same table twice:

employees
    +
employees

Remember:

Normal JOIN -> Different tables
SELF JOIN   -> Same table used more than once

Real-World Uses

SELF JOIN is useful for hierarchical or self-referencing data:

Employee -> Manager
Student -> Mentor
User -> Friend
Category -> Parent Category
Course -> Prerequisite Course

Important Points

SELF JOIN joins a table with itself.

Aliases distinguish the different roles of the same table.

A self-referencing column connects records.

In our example, manager_id refers to employee_id.

LEFT JOIN keeps top-level employees whose manager is NULL.

IS NULL can identify records without a manager.

SELF JOIN is useful for hierarchical relationships.

Quick Revision

SELF JOIN
-> Join a table with itself

e
-> Employee

m
-> Manager

ON e.manager_id = m.employee_id
-> Connect employee to manager

Most important query:

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees AS e
LEFT JOIN employees AS m
ON e.manager_id = m.employee_id;

Practice Questions

What is a SELF JOIN?

Why do we use aliases in a SELF JOIN?

In employees AS e and employees AS m, what do e and m represent?

Write a SELF JOIN that displays Employee and Manager.

Why do we use LEFT JOIN in the employee-manager example?

Write a query to find employees who do not have a manager.

Write a query to find employees managed by Rahul.

Explain the difference between a normal JOIN and a SELF JOIN.

Key Takeaway

SELF JOIN
=
Joining a table with itself

The table is physically one table, but aliases allow us to treat it as two logical roles.

employees e -> Employee
employees m -> Manager

e.manager_id = m.employee_id

This allows the database to represent relationships and hierarchies inside a single table.