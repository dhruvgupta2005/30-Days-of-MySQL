Day 19 - FULL OUTER JOIN and UNION

Objective

Learn the concept of FULL OUTER JOIN and understand how to achieve a FULL OUTER JOIN-like result in MySQL using LEFT JOIN, RIGHT JOIN, and UNION.

What is FULL OUTER JOIN?

A FULL OUTER JOIN returns matching rows, unmatched rows from the left table, and unmatched rows from the right table.

FULL OUTER JOIN
-> Everything from both tables

Conceptually:

INNER JOIN -> Matching rows only
LEFT JOIN  -> Everything from left
RIGHT JOIN -> Everything from right
FULL OUTER JOIN -> Everything from both

Does MySQL Support FULL OUTER JOIN?

MySQL does not directly support:

FULL OUTER JOIN

We can create a FULL OUTER JOIN-like result using:

LEFT JOIN
+
RIGHT JOIN
+
UNION

FULL OUTER JOIN Equivalent in MySQL

For our students and courses tables:

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

The first query gives:

All students + matching courses

The second query gives:

All courses + matching students

UNION combines the results and removes duplicate rows.

Together they provide the FULL OUTER JOIN-like result.

What is UNION?

UNION combines the results of two or more SELECT queries into one result.

SELECT course
FROM students

UNION

SELECT course_name
FROM courses;

The SELECT queries used with UNION should have the same number of columns and compatible data types in corresponding positions.

UNION vs UNION ALL

UNION
-> Combine results + remove duplicates

UNION ALL
-> Combine results + keep duplicates

Example:

SELECT course
FROM students

UNION ALL

SELECT course_name
FROM courses;

UNION ALL keeps duplicate rows.

JOIN vs UNION

Do not confuse them.

JOIN

JOIN combines related tables based on a condition.

students + courses
        |
      JOIN
        |
related rows

UNION

UNION combines the results of SELECT queries.

SELECT result 1
       +
SELECT result 2
       |
     UNION
       |
combined result

Easy way to remember:

JOIN  -> Combine related tables horizontally.
UNION -> Combine SELECT results vertically.

UNION with ORDER BY

For the final UNION result, put ORDER BY at the end:

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

College Management System Use

A FULL OUTER JOIN-like query can show:

Every student.

Every course.

Students without valid course records.

Courses without enrolled students.

Matching students and courses.

Example:

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

Important Points

MySQL does not directly support FULL OUTER JOIN.

FULL OUTER JOIN means keeping everything from both tables.

A FULL OUTER JOIN-like result can be created with LEFT JOIN + RIGHT JOIN + UNION.

UNION combines SELECT results.

UNION removes duplicate rows.

UNION ALL keeps duplicate rows.

JOIN combines related tables based on a condition.

UNION combines query results.

SELECT statements used with UNION should have the same number of columns and compatible data types.

ORDER BY for the final UNION result is placed at the end.

Quick Revision

INNER JOIN
-> Matching rows only

LEFT JOIN
-> All left rows + matching right rows

RIGHT JOIN
-> All right rows + matching left rows

FULL OUTER JOIN
-> Everything from both tables

MySQL equivalent
-> LEFT JOIN
   UNION
   RIGHT JOIN

UNION
-> Combine results and remove duplicates

UNION ALL
-> Combine results and keep duplicates

Day 19 Practice Questions

What does a FULL OUTER JOIN return?

Does MySQL directly support FULL OUTER JOIN?

How can we achieve a FULL OUTER JOIN-like result in MySQL?

What is the difference between UNION and UNION ALL?

Write a query using LEFT JOIN, UNION, and RIGHT JOIN to simulate a FULL OUTER JOIN.

What is the difference between JOIN and UNION?

Why does LEFT JOIN + UNION + RIGHT JOIN provide a FULL OUTER JOIN-like result?

Write a query for the College Management System that displays every student and every course, including unmatched records.

Key Takeaway

MySQL has no direct FULL OUTER JOIN.

FULL OUTER JOIN-like result
        =
LEFT JOIN
   UNION
RIGHT JOIN

Also remember:

JOIN
-> Combine related tables.

UNION
-> Combine SELECT results.