# Day 11 - ORDER BY and LIMIT

## ORDER BY

ORDER BY is used to sort the data returned by a query.

It can sort the data in two ways:

- ASC → Ascending order
- DESC → Descending order

ASC is the default order.

Example:

SELECT *
FROM students
ORDER BY age ASC;

This shows students from youngest to oldest.

We can also write:

SELECT *
FROM students
ORDER BY age;

because ASC is the default.

---

## DESC

DESC sorts the data from highest to lowest or Z to A.

Example:

SELECT *
FROM students
ORDER BY cgpa DESC;

This displays the student with the highest CGPA first.

---

## Sorting Text

ORDER BY can also be used with text columns.

Example:

SELECT *
FROM students
ORDER BY student_name ASC;

This sorts the student names alphabetically.

---

## Sorting Selected Columns

We don't always need to display every column.

Example:

SELECT student_name, cgpa
FROM students
ORDER BY cgpa DESC;

This displays only the student name and CGPA, with the highest CGPA first.

---

## LIMIT

LIMIT is used when we want only a specific number of rows from the result.

Example:

SELECT *
FROM students
LIMIT 5;

This returns only 5 rows.

---

## ORDER BY + LIMIT

ORDER BY and LIMIT are very useful together.

Example:

SELECT student_name, cgpa
FROM students
ORDER BY cgpa DESC
LIMIT 3;

First, the students are sorted according to CGPA.
Then, only the first 3 records are returned.

So this query gives the top 3 students based on CGPA.

---

## WHERE + ORDER BY

We can use WHERE before ORDER BY to filter the records first.

Example:

SELECT student_name, cgpa
FROM students
WHERE cgpa >= 8.00
ORDER BY cgpa DESC;

Here:

1. Students with CGPA 8 or above are selected.
2. The selected students are sorted from highest to lowest CGPA.

---

## WHERE + ORDER BY + LIMIT

All three can be used together.

Example:

SELECT student_name, course, cgpa
FROM students
WHERE course = 'B.Tech'
ORDER BY cgpa DESC
LIMIT 2;

This means:

- Get only B.Tech students.
- Sort them by CGPA from highest to lowest.
- Show only the top 2 students.

This type of query is very common in real applications.

---

## Multiple Column Sorting

ORDER BY can also use more than one column.

Example:

SELECT *
FROM students
ORDER BY course ASC, cgpa DESC;

First, MySQL sorts the students according to their course.

If two or more students have the same course, their CGPA is used for the next level of sorting.

For example:

B.Tech    9.4
B.Tech    8.9
B.Tech    8.2
BBA       9.1
BBA       8.6

---

## Important Points

- ORDER BY is used for sorting data.
- ASC means ascending order.
- DESC means descending order.
- ASC is the default.
- LIMIT controls the number of rows returned.
- ORDER BY can be used with numbers as well as text.
- More than one column can be used with ORDER BY.
- WHERE filters the records before ORDER BY sorts them.

The general order we have learned so far is:

SELECT
FROM
WHERE
ORDER BY
LIMIT

---

## Quick Revision

WHERE      → Filter the records
ORDER BY   → Sort the records
LIMIT      → Restrict the number of records

Example:

SELECT student_name, course, cgpa
FROM students
WHERE course = 'B.Tech'
ORDER BY cgpa DESC
LIMIT 2;

Meaning:

Find B.Tech students → sort by highest CGPA → show only 2.

---

## Practice Questions

1. Display all students from youngest to oldest.

2. Display all students from highest CGPA to lowest.

3. Display the top 3 students according to CGPA.

4. Display B.Tech students in descending order of CGPA.

5. Display the top 2 B.Tech students according to CGPA.

6. Display the 5 youngest students.

7. Display students alphabetically by their name.

---

## Key Takeaway

ORDER BY helps us decide the order in which records should appear, while LIMIT helps us control how many records we want.

The most useful pattern from today is:

SELECT ...
FROM ...
WHERE ...
ORDER BY ...
LIMIT ...;