# Day 9 - BETWEEN, IN and NOT IN

## Objective

Learn how to filter records using BETWEEN, NOT BETWEEN, IN and NOT IN operators to write cleaner and more efficient SQL queries.

---

# BETWEEN

The BETWEEN operator is used to retrieve values within a specified range.

The range is inclusive, which means both the starting and ending values are included.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

Example:

```sql
SELECT *
FROM students
WHERE age BETWEEN 20 AND 21;
```

---

# NOT BETWEEN

NOT BETWEEN returns records that are outside the specified range.

Syntax:

```sql
SELECT *
FROM students
WHERE age NOT BETWEEN 20 AND 21;
```

---

# IN Operator

The IN operator is used to compare one column with multiple values.

Instead of writing multiple OR conditions, we can use IN.

Example:

```sql
SELECT *
FROM students
WHERE course IN ('B.Tech','MBA');
```

Equivalent query:

```sql
SELECT *
FROM students
WHERE course='B.Tech'
OR course='MBA';
```

---

# NOT IN

NOT IN excludes one or more values.

Example:

```sql
SELECT *
FROM students
WHERE course NOT IN ('B.Tech','BCA');
```

This displays all students except those studying B.Tech and BCA.

---

# BETWEEN vs NOT BETWEEN

| BETWEEN | NOT BETWEEN |
|----------|-------------|
| Returns values within a range | Returns values outside a range |
| Includes start and end values | Excludes the specified range |

---

# Common Mistakes

❌ Wrong

```sql
WHERE age BETWEEN 20,21;
```

Correct

```sql
WHERE age BETWEEN 20 AND 21;
```

---

❌ Forgetting quotes around text values.

Wrong

```sql
WHERE course IN (B.Tech,MBA);
```

Correct

```sql
WHERE course IN ('B.Tech','MBA');
```

---

❌ Writing long OR conditions instead of using IN.

---

# Best Practices

- Use BETWEEN for ranges.
- Use IN for multiple values.
- Use NOT BETWEEN and NOT IN to exclude records.
- Keep queries readable and simple.

---

# Mini Project Scenario

You are developing the College Management System.

The Placement Cell asks you to:

- Display students whose age is between 20 and 21.
- Display students from B.Tech and MBA.
- Exclude students from BCA.
- Display students whose age is not between 20 and 22.

These are real filtering operations that are commonly used in database-driven applications.

---

# Interview Questions

1. What is the BETWEEN operator?
2. Is BETWEEN inclusive or exclusive?
3. Difference between BETWEEN and NOT BETWEEN.
4. Difference between IN and multiple OR conditions.
5. What is NOT IN used for?

---

# Key Takeaways

- BETWEEN filters records within a range.
- BETWEEN includes both boundary values.
- IN replaces multiple OR conditions.
- NOT BETWEEN excludes a range.
- NOT IN excludes multiple values.