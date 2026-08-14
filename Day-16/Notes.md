Day 16 - SQL JOINs

Objective

Learn how to combine related data from multiple tables using JOINs.

Today we connected the students table with the courses table using course_id.

What is a JOIN?

A JOIN combines rows from two or more tables based on a related column.

Our database has:

students - stores student information.

courses - stores course information.

Both tables can be connected using course_id.

Why use separate tables?

If course information is stored directly for every student, the same course name may be repeated many times.

Keeping course information in a separate table reduces unnecessary repetition and helps maintain consistency.

Example:

students
student_id | student_name | course_id

courses
course_id | course_name

The common column is:

course_id

Adding course_id

Our original students table stored the course name directly.

We added a course_id column:

ALTER TABLE students
ADD COLUMN course_id INT;

Then we mapped the existing course names to their IDs:

UPDATE students
SET course_id = CASE
    WHEN course = 'B.Tech' THEN 101
    WHEN course = 'BCA' THEN 102
    WHEN course = 'BBA' THEN 103
    WHEN course = 'MBA' THEN 104
END;

We can verify it with:

SELECT student_id, student_name, course, course_id
FROM students;

INNER JOIN

INNER JOIN returns only rows that have a matching value in both tables.

Basic syntax:

SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;

Example:

SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;

This displays each student's name with the corresponding course name.

The ON Clause

The ON clause tells MySQL how the tables are related.

ON s.course_id = c.course_id

MySQL matches rows where the two course_id values are equal.

Remember:

JOIN -> combines tables
ON   -> defines how they are related

Table Aliases

Instead of repeatedly writing:

students.student_name
courses.course_name

we can use aliases:

students AS s
courses AS c

Then:

s.student_name
c.course_name

Example:

SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;

Aliases make JOIN queries easier to read.

INNER JOIN with ORDER BY

JOIN can be combined with the concepts we already learned.

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

This combines the tables and displays students from highest CGPA to lowest.

INNER JOIN with WHERE

We can filter the joined result.

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'B.Tech';

Here:

JOIN -> connects students and courses
ON   -> tells MySQL how to connect them
WHERE -> keeps only B.Tech students

JOIN with Multiple Conditions

We can also use AND:

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'B.Tech'
AND s.cgpa > 8.00
ORDER BY s.cgpa DESC;

This displays B.Tech students whose CGPA is above 8, with the highest CGPA first.

What happens when there is no match?

Suppose a student has a course_id that does not exist in the courses table.

With an INNER JOIN, that student will not appear in the result.

Matching row    -> included
No matching row -> excluded

JOIN vs ON vs WHERE

Remember:

JOIN  -> Which tables should I combine?
ON    -> How are those tables related?
WHERE -> Which rows do I want?

Important Points

JOIN is used to retrieve related data from multiple tables.

INNER JOIN returns only matching records.

The ON clause defines the relationship between tables.

A related/common column is normally used for the JOIN.

Table aliases make JOIN queries shorter and easier to read.

WHERE filters rows from the joined result.

ORDER BY can sort the joined result.

A JOIN does not permanently merge the original tables.

Quick Revision

JOIN       -> Combine related data
INNER JOIN -> Return matching records
ON         -> Define the matching condition
WHERE      -> Filter rows
ORDER BY   -> Sort the result
AS         -> Create an alias

Example:

SELECT
    s.student_name,
    c.course_name
FROM students AS s
INNER JOIN courses AS c
ON s.course_id = c.course_id;

Meaning:

"Find students and their corresponding course names by matching course_id."

Day 16 Practice Questions

What is a JOIN?

Why do we use separate tables instead of storing all information in one table?

What is the purpose of the ON clause?

What does an INNER JOIN return?

Write a query to display student name and course name using INNER JOIN.

Write a query to display student name, course name and CGPA, sorted by CGPA in descending order.

Write a query to display only B.Tech students using INNER JOIN.

What happens if a row has no matching value in the other table?

Explain the difference between JOIN, ON and WHERE.

Key Takeaway

The main idea of today is:

students
   |
   | course_id
   |
courses

Related information can be stored separately and connected when required.

This is one of the foundations of relational databases.