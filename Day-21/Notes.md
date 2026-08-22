Day 21 - SUBQUERIES

## Objective

Learn how to use a query inside another query.

A subquery is useful when the result of one query is needed by another query.

---

## What is a Subquery?

A subquery is a query written inside another SQL query.

```text
Query inside another query
```

Example:

```sql
SELECT student_name
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);
```

The inner query calculates the average CGPA, and the outer query finds students whose CGPA is greater than that average.

---

## Basic Structure

A subquery is usually written inside parentheses:

```sql
SELECT ...
FROM ...
WHERE column > (
    SELECT ...
    FROM ...
);
```

Flow:

```text
Inner Query
     ↓
Produces a value/result
     ↓
Outer Query
     ↓
Uses that value/result
```

---

## Subquery with AVG()

Find students whose CGPA is greater than the average CGPA:

```sql
SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);
```

---

## Subquery with MAX()

Find students with the highest CGPA:

```sql
SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM students
);
```

---

## Subquery with MIN()

Find students with the lowest CGPA:

```sql
SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa = (
    SELECT MIN(cgpa)
    FROM students
);
```

---

## Subquery with COUNT()

```sql
SELECT *
FROM students
WHERE (
    SELECT COUNT(*)
    FROM students
) > 5;
```

The inner query counts the students and the outer query checks that result.

---

## Single-Value Subquery

A single-value subquery returns one value.

Examples:

```sql
SELECT AVG(cgpa) FROM students;
SELECT MAX(cgpa) FROM students;
SELECT MIN(cgpa) FROM students;
```

These can be used with:

```text
=
>
<
>=
<=
```

---

## Multi-Value Subquery

A subquery can return multiple values.

Example:

```sql
SELECT course_name
FROM courses;
```

When multiple values are returned, `IN` is useful:

```sql
SELECT
    student_name,
    course
FROM students
WHERE course IN (
    SELECT course_name
    FROM courses
);
```

Remember:

```text
Single value
→ =, >, <, >=, <=

Multiple values
→ IN
```

---

## NOT IN

```sql
SELECT course_name
FROM courses
WHERE course_name NOT IN (
    SELECT course
    FROM students
);
```

This finds courses that are not present in the students' course values.

---

## Subquery in SELECT

```sql
SELECT
    student_name,
    cgpa,
    (SELECT AVG(cgpa) FROM students) AS Average_CGPA
FROM students;
```

The average CGPA is displayed alongside every student.

---

## Subquery in FROM

```sql
SELECT *
FROM (
    SELECT
        student_name,
        cgpa
    FROM students
    WHERE cgpa > 8.00
) AS high_scorers;
```

The inner query creates a temporary result that the outer query uses. This is commonly called a derived table.

---

## Subquery vs JOIN

### JOIN

JOIN combines related tables based on a condition.

```sql
SELECT
    s.student_name,
    c.course_name
FROM students AS s
JOIN courses AS c
ON s.course_id = c.course_id;
```

### Subquery

A subquery uses the result of another query.

```sql
SELECT
    student_name,
    cgpa
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);
```

Easy way to remember:

```text
JOIN
→ Combine related tables.

SUBQUERY
→ Use the result of another query.
```

---

## Real-World Example

Find employees earning more than the average salary:

```sql
SELECT
    employee_name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

---

## Important Points

- A subquery is a query inside another query.
- Subqueries are usually written inside parentheses.
- `AVG()`, `MAX()`, `MIN()` and `COUNT()` can be used inside subqueries.
- A single-value subquery can be used with comparison operators.
- A multi-value subquery can be used with `IN`.
- `NOT IN` can exclude values returned by a subquery.
- A subquery can appear in `WHERE`, `SELECT`, and `FROM`.
- JOIN and subquery solve different kinds of problems.

---

## Quick Revision

```text
SUBQUERY
→ Query inside another query

AVG()
→ Average

MAX()
→ Highest value

MIN()
→ Lowest value

COUNT()
→ Number of rows

IN
→ Compare with multiple returned values

NOT IN
→ Exclude returned values
```

---

## Day 21 Practice Questions

1. What is a subquery?

2. Identify the subquery in:

```sql
SELECT student_name
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);
```

3. Write a query to find students whose CGPA is greater than the average CGPA.

4. Write a query to find students with the highest CGPA.

5. Write a query to find students with the lowest CGPA.

6. What is the difference between a single-value and multi-value subquery?

7. Why do we use `IN` when a subquery returns multiple values?

8. Explain the difference between a JOIN and a subquery.

---

## Key Takeaway

```text
Subquery = Query inside another query
```

The inner query produces information, and the outer query uses that information.

Most important pattern:

```sql
SELECT ...
FROM ...
WHERE column > (
    SELECT ...
    FROM ...
);
```