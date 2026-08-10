Day 12 - Aggregate Functions

What are Aggregate Functions?

Aggregate functions are used to perform calculations on multiple rows and return a single result.

For example, instead of looking at every student's CGPA separately, we can find the average, highest, or lowest CGPA.

The main aggregate functions we learned today are:

COUNT()

AVG()

MAX()

MIN()

SUM()

1. COUNT()

COUNT() is used to count rows.

Example

SELECT COUNT(*)
FROM students;

This counts the total number of students.

We can use AS to give the result a temporary name.

SELECT COUNT(*) AS Total_students
FROM students;

COUNT(*) vs COUNT(column)

COUNT(*) counts all rows.

SELECT COUNT(*)
FROM students;

COUNT(column) counts only the rows where that column is not NULL.

SELECT COUNT(cgpa)
FROM students;

So if some students have NULL in the CGPA column, those rows are not counted by COUNT(cgpa).

2. AVG()

AVG() is used to calculate the average of a numeric column.

Example

SELECT AVG(cgpa)
FROM students;

We can also give the output a meaningful name.

SELECT AVG(cgpa) AS Average_CGPA
FROM students;

AVG() with WHERE

We can calculate the average for only a particular group of students.

SELECT AVG(cgpa) AS Average_CGPA
FROM students
WHERE course = 'B.Tech';

Here, MySQL first selects the B.Tech students and then calculates their average CGPA.

3. MAX()

MAX() returns the highest value from a column.

SELECT MAX(cgpa) AS Highest_CGPA
FROM students;

For example, if the CGPAs are:

7.5
8.1
8.7
9.2
7.9

MAX() will return:

9.2

4. MIN()

MIN() returns the lowest value from a column.

SELECT MIN(cgpa) AS Lowest_CGPA
FROM students;

For example:

7.5
8.1
8.7
9.2
7.9

MIN() will return:

7.5

5. SUM()

SUM() adds numeric values from multiple rows.

Example:

SELECT SUM(fees) AS Total_fees
FROM students;

However, our current students table does not contain a fees column, so we are not going to add a new column just for this topic.

The important thing to remember is:

SUM() → adds numeric values.

It can be useful for things such as:

fees

salary

marks

quantity

price

Using Multiple Aggregate Functions

We can use multiple aggregate functions in the same query.

SELECT
    COUNT(*) AS Total_students,
    AVG(cgpa) AS Average_CGPA,
    MAX(cgpa) AS Highest_CGPA,
    MIN(cgpa) AS Lowest_CGPA
FROM students;

This query gives us four different pieces of information about the students table in one result.

Aggregate Functions with WHERE

Aggregate functions can also be used with WHERE.

For example, to find the highest CGPA among B.Tech students:

SELECT MAX(cgpa) AS Highest_BTech_CGPA
FROM students
WHERE course = 'B.Tech';

To find the lowest CGPA among B.Tech students:

SELECT MIN(cgpa) AS Lowest_BTech_CGPA
FROM students
WHERE course = 'B.Tech';

The important point is that WHERE filters the rows first, and then the aggregate function works on the filtered data.

Normal SELECT vs Aggregate Function

Normal query:

SELECT cgpa
FROM students;

This displays the CGPA of every student.

Aggregate query:

SELECT AVG(cgpa)
FROM students;

This gives one calculated result: the average CGPA.

So:

SELECT column
    ↓
Shows individual values

Aggregate function
    ↓
Calculates information from multiple rows

Quick Comparison

Function

Purpose

COUNT()

Counts rows

AVG()

Finds average

MAX()

Finds highest value

MIN()

Finds lowest value

SUM()

Adds numeric values

Important Points to Remember

Aggregate functions work on multiple rows.

They normally return a single result.

COUNT(*) counts all rows.

COUNT(column) ignores NULL values.

AVG() calculates the average of numeric values.

MAX() returns the highest value.

MIN() returns the lowest value.

SUM() adds numeric values.

Aggregate functions can be used with WHERE.

AS can be used to give a temporary name to the output.

Today's Takeaway

Today I learned how to get useful information from a table instead of just displaying individual records.

The five important functions are:

COUNT() → How many?
AVG()   → What is the average?
MAX()   → What is the highest?
MIN()   → What is the lowest?
SUM()   → What is the total?

These functions will become especially important when we start working with GROUP BY and more advanced SQL queries.