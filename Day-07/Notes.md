# Day 7 - WHERE Clause (Filtering Data)

## Objective

Learn how to filter records using the WHERE clause, use comparison operators, understand NULL comparisons, and retrieve only the required data from a table.

---

# What is the WHERE Clause?

The WHERE clause is used to filter records based on a condition.

Instead of retrieving all records from a table, it returns only those records that satisfy the specified condition.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

---

# Why Do We Need WHERE?

Suppose a college database contains 10,000 students.

If we need only B.Tech students, displaying all students is inefficient.

The WHERE clause allows us to retrieve only the required records.

Example:

```sql
SELECT *
FROM students
WHERE course = 'B.Tech';
```

---

# Comparison Operators

| Operator | Meaning |
|----------|---------|
| = | Equal to |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal to |
| <= | Less than or equal to |
| != or <> | Not equal to |

Example:

```sql
SELECT *
FROM students
WHERE age = 20;
```

---

# Filtering Numeric Values

Example:

```sql
SELECT *
FROM students
WHERE cgpa > 8.50;
```

Displays students whose CGPA is greater than 8.50.

---

# Filtering Text Values

Text values must always be enclosed in single quotes.

Example:

```sql
SELECT *
FROM students
WHERE course = 'B.Tech';
```

---

# Filtering Specific Columns

Example:

```sql
SELECT student_name, cgpa
FROM students
WHERE cgpa > 8.00;
```

Only the required columns are displayed.

---

# NULL Values

NULL represents an unknown or missing value.

Incorrect:

```sql
WHERE cgpa = NULL;
```

Correct:

```sql
WHERE cgpa IS NULL;
```

The IS NULL operator is used because NULL is not an actual value.

---

# Common Mistakes

❌ Forgetting the WHERE keyword.

❌ Using = NULL instead of IS NULL.

❌ Forgetting single quotes around text values.

Wrong:

```sql
WHERE course = B.Tech;
```

Correct:

```sql
WHERE course = 'B.Tech';
```

---

❌ Using the wrong table name.

Example:

student

instead of

students

---

# Best Practices

- Retrieve only the required records.
- Use meaningful conditions.
- Use IS NULL for NULL values.
- Verify the table name before executing queries.
- Retrieve only the required columns instead of using SELECT * whenever possible.

---

# Interview Questions

1. What is the purpose of the WHERE clause?
2. Why do we use WHERE?
3. Difference between SELECT * and SELECT with WHERE.
4. Why do we use IS NULL instead of = NULL?
5. Can WHERE be used with numeric and text values?
6. Which comparison operators are supported in SQL?
7. Why should unnecessary SELECT * queries be avoided?
8. Can WHERE be used with UPDATE and DELETE statements?

---

# Key Takeaways

- WHERE filters records.
- Comparison operators define conditions.
- Text values must be enclosed in single quotes.
- NULL is checked using IS NULL.
- SELECT * returns all records, while WHERE returns only matching records.