Day 15 - DISTINCT

What is DISTINCT?

DISTINCT is used to remove duplicate values from the result of a query.

For example, if the students table contains:

B.Tech
B.Tech
BCA
B.Tech
BBA
BCA

This query:

SELECT course
FROM students;

can return duplicate courses.

But:

SELECT DISTINCT course
FROM students;

returns each course only once.

DISTINCT with Multiple Columns

DISTINCT can be used with more than one column.

SELECT DISTINCT course, age
FROM students;

Here MySQL checks the combination of course and age.

If the same course and age combination appears more than once, the duplicate combination is removed.

DISTINCT with WHERE

DISTINCT can be combined with WHERE.

SELECT DISTINCT course
FROM students
WHERE cgpa > 8.00;

This displays the unique courses of students whose CGPA is greater than 8.00.

The WHERE condition filters the rows first, and DISTINCT removes duplicate courses from the result.

DISTINCT with ORDER BY

We can sort the unique values.

SELECT DISTINCT course
FROM students
ORDER BY course ASC;

This displays unique courses in alphabetical order.

COUNT(DISTINCT column)

DISTINCT can also be used inside COUNT().

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;

This counts the number of different courses instead of counting every student.

For example:

Students = 10
Different courses = 4

Then:

COUNT(*) → 10
COUNT(DISTINCT course) → 4

DISTINCT vs GROUP BY

These can sometimes produce the same visible result:

SELECT DISTINCT course
FROM students;

and:

SELECT course
FROM students
GROUP BY course;

But their purpose is different.

DISTINCT is mainly used when we simply want unique values.

GROUP BY is used when we want to create groups and usually perform calculations on those groups.

For example:

SELECT course, COUNT(*)
FROM students
GROUP BY course;

This does more than just remove duplicates. It counts the students in each course.

Remember:

DISTINCT → I want unique values.

GROUP BY → I want to work with each group separately.

DISTINCT vs COUNT(*)

These two also have different purposes.

SELECT COUNT(*)
FROM students;

counts all rows.

While:

SELECT COUNT(DISTINCT course)
FROM students;

counts only the different course values.

College Management System Use

DISTINCT can be useful in our College Management System for tasks such as:

Displaying all available courses.

Finding how many different courses are available.

Finding unique courses among students with a particular CGPA.

Creating lists of unique values for filters or dropdowns.

Example:

SELECT DISTINCT course
FROM students
ORDER BY course ASC;

This gives the college administration a sorted list of available courses.

Important Points

DISTINCT removes duplicate results.

DISTINCT can be used with one or multiple columns.

DISTINCT can be combined with WHERE.

DISTINCT can be combined with ORDER BY.

COUNT(DISTINCT column) counts unique values.

DISTINCT and GROUP BY can sometimes produce similar results, but they have different purposes.

GROUP BY becomes more useful when aggregate functions are involved.

Quick Revision

DISTINCT → Remove duplicate values

COUNT(*) → Count rows

COUNT(DISTINCT column) → Count unique values

GROUP BY → Create groups for analysis

Example:

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;

Meaning:

"How many different courses are available?"

Practice Questions

Display all unique courses from the students table.

Count how many different courses are available.

Display unique courses where CGPA is greater than 8.00.

Display unique courses in alphabetical order.

Count the number of unique courses among students whose CGPA is greater than 8.00.

Explain the difference between DISTINCT and GROUP BY.

Explain the difference between COUNT(*) and COUNT(DISTINCT course).

Key Takeaway

DISTINCT is useful when we need unique values instead of repeated values.

The most important examples from today are:

SELECT DISTINCT course
FROM students;

and:

SELECT COUNT(DISTINCT course) AS Total_courses
FROM students;

DISTINCT is especially useful when displaying unique options in applications, while GROUP BY is useful for grouped analysis and reports.