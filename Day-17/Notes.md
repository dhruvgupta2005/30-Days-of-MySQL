Day 17 - LEFT JOIN

Objective

Learn how LEFT JOIN works and understand how it differs from INNER JOIN.

Today we continued working with the students and courses tables from Day 16.

What is LEFT JOIN?

LEFT JOIN returns:

All rows from the left table.

Matching rows from the right table.

NULL values for the right table when no match exists.

Basic syntax:

SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;

Example:

SELECT
    s.student_name,
    c.course_name
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id;

Here:

students -> LEFT table
courses  -> RIGHT table

Therefore, every student is included in the result.

INNER JOIN vs LEFT JOIN

INNER JOIN

Only matching records are returned.

Matching row    -> included
No matching row -> excluded

LEFT JOIN

All rows from students are returned.

Matching row    -> included with course information
No matching row -> included with NULL on the course side

Easy way to remember:

INNER JOIN -> Only matching records

LEFT JOIN  -> Everything from LEFT
              + matching data from RIGHT

Example of a Missing Match

Suppose a student has:

course_id = 999

but there is no 999 in the courses table.

With INNER JOIN, the student will not appear.

With LEFT JOIN:

student_name | course_name
Arjun        | NULL

The student remains because students is the left table.

LEFT JOIN with CGPA

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

This displays all students, their course information when available, and sorts them by CGPA.

LEFT JOIN with WHERE

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.cgpa > 8.00;

Here:

LEFT JOIN -> Connect students and courses
WHERE     -> Keep students with CGPA > 8.00

Finding Records with No Match

One useful pattern with LEFT JOIN is finding records that have no matching record in another table.

SELECT
    s.student_name,
    s.course_id
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_id IS NULL;

The JOIN keeps all students.

If a student has no matching course, the columns from courses become NULL.

Then:

WHERE c.course_id IS NULL

keeps only those students.

This is commonly used to find missing relationships.

Why IS NULL?

Do not use:

WHERE c.course_id = NULL;

Use:

WHERE c.course_id IS NULL;

NULL represents the absence of a known value, so normal equality comparison is not used to test for it.

LEFT JOIN with ORDER BY and LIMIT

SELECT
    s.student_name,
    c.course_name,
    s.cgpa
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC
LIMIT 3;

This displays the top three students by CGPA and their course information where available.

RIGHT JOIN

RIGHT JOIN keeps all rows from the right table and matching rows from the left table.

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

Remember:

LEFT JOIN
-> Keep everything from LEFT table

RIGHT JOIN
-> Keep everything from RIGHT table

We are focusing mainly on LEFT JOIN today.

JOIN Types Covered So Far

INNER JOIN
-> Only matching rows

LEFT JOIN
-> All left rows + matching right rows

RIGHT JOIN
-> All right rows + matching left rows

Important Points

LEFT JOIN always keeps every row from the left table.

Matching rows from the right table are included.

If no match exists, right-table columns become NULL.

LEFT JOIN + IS NULL can find missing relationships.

WHERE can filter the result of a LEFT JOIN.

ORDER BY can sort the joined result.

RIGHT JOIN keeps all rows from the right table.

Quick Revision

INNER JOIN -> Only matching records

LEFT JOIN  -> All left records + matching right records

RIGHT JOIN -> All right records + matching left records

IS NULL    -> Check for absence of a value

Most important pattern:

SELECT
    s.student_name,
    s.course_id
FROM students AS s
LEFT JOIN courses AS c
ON s.course_id = c.course_id
WHERE c.course_id IS NULL;

Meaning:

Find students whose course ID does not have a matching course record.

Day 17 Practice Questions

What is the main difference between INNER JOIN and LEFT JOIN?

Which table is the left table in:

FROM students AS s
LEFT JOIN courses AS c

What happens to course_name when there is no matching course?

Write a query to display student name, course name and CGPA using LEFT JOIN.

Write a query to find students whose course_id has no matching record in courses.

Why do we use IS NULL instead of = NULL?

Explain the difference between INNER JOIN, LEFT JOIN and RIGHT JOIN.

Key Takeaway

LEFT JOIN
    |
    +-- Keep every row from the left table
    |
    +-- Add matching information from the right table
    |
    +-- No match -> NULL

For our College Management System:

students
    |
    | course_id
    |
courses

LEFT JOIN lets us keep every student even when course information is missing.