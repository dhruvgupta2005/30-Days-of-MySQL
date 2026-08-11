# Day 13 - GROUP BY

## What is GROUP BY?

GROUP BY is used to group rows that have the same value in a particular column.

It is mainly used with aggregate functions such as:

- COUNT()
- AVG()
- MAX()
- MIN()
- SUM()

For example, suppose we want to find the average CGPA of students in each course.

```sql
SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;

Here, students having the same course are grouped together and the average CGPA is calculated separately for each course.

## COUNT() with GROUP BY

We can count how many students are present in each course.

SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course;

Instead of getting the total number of students in the whole table, we get the total students for each course.

Example:

B.Tech → 3 students
BCA    → 2 students
BBA    → 2 students

##AVG() with GROUP BY

AVG() can be used to calculate the average value for every group.

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;

This gives the average CGPA separately for each course.

MAX() with GROUP BY

MAX() returns the highest value from every group.

SELECT course, MAX(cgpa) AS Highest_CGPA
FROM students
GROUP BY course;

This gives the highest CGPA in each course.

MIN() with GROUP BY

MIN() returns the lowest value from every group.

SELECT course, MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course;

This gives the lowest CGPA in each course.

Using Multiple Aggregate Functions

We can use multiple aggregate functions together with GROUP BY.

SELECT
    course,
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA,
    MAX(cgpa) AS Highest_CGPA,
    MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course;

This gives a complete summary of every course.

WHERE with GROUP BY

WHERE is used to filter rows before they are grouped.

For example, if we only want students whose CGPA is greater than 8:

SELECT
    course,
    COUNT(*) AS Total_students
FROM students
WHERE cgpa > 8.00
GROUP BY course;

The process is:

WHERE filters the students.
GROUP BY groups the remaining students by course.
COUNT() counts students in each course.
GROUP BY with ORDER BY

GROUP BY can also be used with ORDER BY.

For example, we can display courses according to their average CGPA.

SELECT
    course,
    AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
ORDER BY Average_CGPA DESC;

Here:

GROUP BY creates groups according to course.
AVG() calculates the average CGPA.
ORDER BY sorts the final result.
DESC displays the highest average first.
GROUP BY vs ORDER BY

These two clauses have different purposes.

GROUP BY → Groups similar rows together.

ORDER BY → Sorts the result.

Example:

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
ORDER BY Average_CGPA DESC;

First the students are grouped by course.

Then the resulting course-wise averages are sorted from highest to lowest.

Important Rule of GROUP BY

When using GROUP BY, columns in SELECT should generally either:

be included in GROUP BY
or be used inside an aggregate function

Correct:

SELECT course, AVG(cgpa)
FROM students
GROUP BY course;

Here:

course → grouped column
AVG(cgpa) → aggregate function
SQL Clause Order

The basic order of the clauses we have learned so far is:

SELECT
FROM
WHERE
GROUP BY
ORDER BY
LIMIT

Example:

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
WHERE cgpa > 8.00
GROUP BY course
ORDER BY Average_CGPA DESC
LIMIT 3;
GROUP BY in Our College Management Project

Our college management database can use GROUP BY to generate useful reports.

For example:

Number of students in each course.
Average CGPA of each course.
Highest CGPA in each course.
Lowest CGPA in each course.
Course-wise academic performance.

Example:

SELECT
    course,
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;

This can be used as a basic course-wise academic report.

Quick Revision
COUNT() → Counts records
AVG()   → Finds average
MAX()   → Finds highest value
MIN()   → Finds lowest value
SUM()   → Finds total

GROUP BY → Performs these calculations separately for each group.

Example:

SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course;

Meaning:

"Find the average CGPA separately for every course."

Practice Questions
Q1

Count the number of students in each course.

Q2

Find the average CGPA of each course.

Q3

Find the highest CGPA in each course.

Q4

Find the lowest CGPA in each course.

Q5

Display the course, total number of students and average CGPA for every course.

Q6

Display courses according to their average CGPA from highest to lowest.

Q7

Display the number of students in each course where CGPA is greater than 8.00.