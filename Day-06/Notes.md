# Day 6 - SELECT Statement (Retrieving Data)

## Objective

Learn how to retrieve data from a table using the SELECT statement, display specific columns, use aliases, remove duplicate values, and limit the number of records displayed.

---

# What is SELECT?

The SELECT statement is used to retrieve data from one or more tables in a database.

Syntax:

```sql
SELECT column_name
FROM table_name;
```

Example:

```sql
SELECT student_name
FROM students;
```

---

# SELECT *

The asterisk (*) represents all columns of a table.

Syntax:

```sql
SELECT *
FROM students;
```

This displays every column and every row from the table.

---

# Selecting Specific Columns

Instead of displaying all columns, we can choose only the required columns.

Example:

```sql
SELECT student_name, course
FROM students;
```

This displays only the student's name and course.

---

# Column Order

The output follows the order of the columns written in the SELECT statement.

Example:

```sql
SELECT course, student_name
FROM students;
```

The Course column will appear before Student Name.

---

# Alias (AS)

An alias provides a temporary display name for a column.

Syntax:

```sql
SELECT student_name AS 'Student Name'
FROM students;
```

Aliases improve readability but do not change the actual column name.

---

# DISTINCT

DISTINCT removes duplicate values from the result.

Syntax:

```sql
SELECT DISTINCT course
FROM students;
```

Output:

B.Tech

BCA

BBA

MBA

---

# LIMIT

LIMIT restricts the number of rows returned by a query.

Syntax:

```sql
SELECT *
FROM students
LIMIT 3;
```

This displays only the first three records.

---

# Common Mistakes

❌ Forgetting the FROM keyword.

Wrong:

```sql
SELECT * students;
```

Correct:

```sql
SELECT * FROM students;
```

---

❌ Misspelling the table name.

Wrong:

```sql
SELECT * FROM student;
```

Correct:

```sql
SELECT * FROM students;
```

---

❌ Assuming * means all tables.

Actually, * means all columns of the selected table.

---

❌ Thinking AS changes the column name permanently.

It only changes the display name in the query result.

---

# Best Practices

- Avoid using SELECT * in large production databases.
- Retrieve only the required columns.
- Use aliases for better readability.
- Use DISTINCT only when duplicate values need to be removed.
- Use LIMIT when working with large datasets.

---

# Interview Questions

1. What is the purpose of the SELECT statement?
2. What does * represent in SELECT *?
3. Difference between SELECT * and SELECT column_name.
4. What is an alias?
5. What is the purpose of DISTINCT?
6. What is the purpose of LIMIT?
7. Does AS permanently rename a column?
8. Why should SELECT * be avoided in large applications?

---

# Key Takeaways

- SELECT retrieves data from tables.
- * displays all columns.
- Specific columns can be selected.
- AS provides temporary column names.
- DISTINCT removes duplicate values.
- LIMIT restricts the number of returned rows.