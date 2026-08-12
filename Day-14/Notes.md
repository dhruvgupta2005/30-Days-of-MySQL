# Day 14 - HAVING Clause

## Objective

Learn how to use the `HAVING` clause to filter grouped data and understand the difference between `WHERE` and `HAVING`.

---

## What is HAVING?

`HAVING` is used to filter groups created using `GROUP BY`.

`WHERE` filters individual rows, while `HAVING` filters groups.

### Basic Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## WHERE vs HAVING

### WHERE

`WHERE` filters rows before they are grouped.

Example:

```sql
SELECT course, COUNT(*) AS Total_students
FROM students
WHERE cgpa > 7.00
GROUP BY course;
```

This first selects students whose CGPA is greater than 7.00 and then groups them by course.

### HAVING

`HAVING` filters groups after `GROUP BY`.

Example:

```sql
SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course
HAVING COUNT(*) > 2;
```

This first creates groups based on the course and then displays only the courses having more than 2 students.

---

## HAVING with COUNT()

`COUNT()` can be used with `HAVING` to filter groups according to the number of rows.

```sql
SELECT course, COUNT(*) AS Total_students
FROM students
GROUP BY course
HAVING COUNT(*) >= 2;
```

This displays only courses having at least 2 students.

---

## HAVING with AVG()

We can filter groups based on their average value.

```sql
SELECT course, AVG(cgpa) AS Average_CGPA
FROM students
GROUP BY course
HAVING AVG(cgpa) > 8.00;
```

This displays courses whose average CGPA is greater than 8.00.

---

## HAVING with MAX()

`MAX()` can also be used with `HAVING`.

```sql
SELECT course, MAX(cgpa) AS Highest_CGPA
FROM students
GROUP BY course
HAVING MAX(cgpa) > 9.00;
```

This displays courses where the highest CGPA is greater than 9.00.

---

## HAVING with MIN()

```sql
SELECT course, MIN(cgpa) AS Lowest_CGPA
FROM students
GROUP BY course
HAVING MIN(cgpa) >= 7.00;
```

This displays courses where the lowest CGPA is at least 7.00.

---

## WHERE + GROUP BY + HAVING

`WHERE` and `HAVING` can be used together.

Example:

```sql
SELECT course, COUNT(*) AS Total_students
FROM students
WHERE cgpa > 7.00
GROUP BY course
HAVING COUNT(*) >= 2;
```

Here:

1. `WHERE` selects students having CGPA greater than 7.00.
2. `GROUP BY` groups those students according to their course.
3. `HAVING` keeps only courses having at least 2 such students.

---

## Query Execution Order

A useful way to remember the logical order is:

```text
FROM
  ↓
WHERE
  ↓
GROUP BY
  ↓
HAVING
  ↓
SELECT
  ↓
ORDER BY
  ↓
LIMIT
```

---

## Important Difference

| Clause   | Purpose                                    |
| -------- | ------------------------------------------ |
| WHERE    | Filters individual rows                    |
| GROUP BY | Creates groups of rows with the same value |
| HAVING   | Filters the groups                         |

Example:

```sql
WHERE cgpa > 7.00
```

filters individual students.

```sql
GROUP BY course
```

creates groups according to course.

```sql
HAVING COUNT(*) >= 2
```

filters those course groups.

---

## Key Takeaways

* `WHERE` filters rows.
* `GROUP BY` creates groups.
* `HAVING` filters groups.
* `HAVING` is commonly used with aggregate functions.
* Common aggregate functions used with `HAVING` are `COUNT()`, `AVG()`, `MAX()`, `MIN()` and `SUM()`.
* `WHERE` is applied before `GROUP BY`.
* `HAVING` is applied after `GROUP BY`.
* `WHERE COUNT(*) > 2` is not the correct way to filter grouped results. Use `HAVING COUNT(*) > 2`.

---

## Day 14 Summary

The main concept learned today is:

```text
WHERE → filters rows

GROUP BY → creates groups

HAVING → filters groups
```

This is especially useful when working with aggregate functions and grouped reports.
