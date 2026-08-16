Day 18 - RIGHT JOIN

Objective

Learn how RIGHT JOIN works and understand how it differs from INNER JOIN and LEFT JOIN.

Today we continued working with the students and courses tables.

What is RIGHT JOIN?

RIGHT JOIN returns all rows from the right table, matching rows from the left table, and NULL values on the left side when no match exists.

SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;

In this structure:

table1 -> LEFT table
table2 -> RIGHT table

Therefore, RIGHT JOIN preserves every row from the right table.

Basic RIGHT JOIN

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

Here students is the left table and courses is the right table, so every course is preserved.

If a course has no matching student, the student columns contain NULL.

RIGHT JOIN with Multiple Columns

SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

This displays course information together with matching student information.

RIGHT JOIN with ORDER BY

SELECT
    c.course_name,
    s.student_name,
    s.cgpa
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
ORDER BY s.cgpa DESC;

This sorts the joined result by CGPA.

Finding Courses with No Students

A useful RIGHT JOIN pattern is:

SELECT
    c.course_id,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

Here courses is the right table. If a course has no matching student, s.student_id becomes NULL.

Therefore, the query finds courses with no students.

INNER JOIN vs LEFT JOIN vs RIGHT JOIN

INNER JOIN -> Only matching rows

LEFT JOIN  -> All left rows + matching right rows

RIGHT JOIN -> All right rows + matching left rows

RIGHT JOIN and LEFT JOIN Can Be Equivalent

A RIGHT JOIN can be rewritten as a LEFT JOIN by reversing the table order.

RIGHT JOIN:

SELECT
    s.student_name,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id;

Equivalent LEFT JOIN:

SELECT
    s.student_name,
    c.course_name
FROM courses AS c
LEFT JOIN students AS s
ON c.course_id = s.course_id;

Both preserve all rows from courses.

RIGHT JOIN + IS NULL

The important pattern is:

RIGHT JOIN + left_table.column IS NULL
-> Find records in the right table with no matching record in the left table.

Example:

SELECT
    c.course_id,
    c.course_name
FROM students AS s
RIGHT JOIN courses AS c
ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

Meaning:

Find courses that currently have no matching students.

College Management System Use

RIGHT JOIN can help identify:

Courses with no enrolled students.

Courses that exist in the database but have no student records.

Course information along with student information.

Missing relationships between students and courses.

Important Points

RIGHT JOIN preserves all rows from the right table.

Matching rows from the left table are included.

If no match exists, left-table columns become NULL.

RIGHT JOIN + IS NULL can find right-table records with no match.

RIGHT JOIN can often be rewritten as LEFT JOIN by reversing table order.

INNER JOIN returns only matching records.

LEFT JOIN preserves the left table.

RIGHT JOIN preserves the right table.

Quick Revision

INNER JOIN
-> Only matching records

LEFT JOIN
-> All left records + matching right records

RIGHT JOIN
-> All right records + matching left records

Day 18 Practice Questions

What is the main purpose of RIGHT JOIN?

Which table's rows are guaranteed to appear in FROM students AS s RIGHT JOIN courses AS c?

Write a RIGHT JOIN that displays course name and student name.

Write a RIGHT JOIN that displays course name, student name and CGPA.

Write a query to find courses that currently have no students.

Explain the difference between INNER JOIN, LEFT JOIN and RIGHT JOIN.

Rewrite a RIGHT JOIN as an equivalent LEFT JOIN.

Key Takeaway

RIGHT JOIN
    |
    +-- Keep every row from the RIGHT table
    +-- Add matching information from the LEFT table
    +-- No match -> NULL on the LEFT side

For our College Management System, a RIGHT JOIN with courses on the right lets us keep every course, even when no st