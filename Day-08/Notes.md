# Day 8 - Logical Operators (AND, OR, NOT)

## Objective

Learn how to combine multiple conditions using logical operators to filter records more efficiently.

---

# What are Logical Operators?

Logical operators are used to combine multiple conditions in a SQL query.

They help retrieve records based on more than one condition.

Logical operators in MySQL:

- AND
- OR
- NOT

---

# AND Operator

The AND operator returns records only when all specified conditions are true.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE condition1 AND condition2;
```

Example:

```sql
SELECT *
FROM students
WHERE course = 'B.Tech'
AND cgpa > 8.50;
```

Only B.Tech students having a CGPA greater than 8.50 will be displayed.

---

# OR Operator

The OR operator returns records when at least one condition is true.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE condition1 OR condition2;
```

Example:

```sql
SELECT *
FROM students
WHERE course = 'BCA'
OR course = 'MBA';
```

Students from either BCA or MBA will be displayed.

---

# NOT Operator

The NOT operator excludes records that satisfy the specified condition.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE NOT condition;
```

Example:

```sql
SELECT *
FROM students
WHERE NOT course = 'B.Tech';
```

Displays all students except those studying B.Tech.

---

# Combining Conditions

Example 1

```sql
SELECT *
FROM students
WHERE age = 20
AND course = 'B.Tech';
```

Example 2

```sql
SELECT *
FROM students
WHERE age = 20
OR cgpa > 9.00;
```

---

# Operator Precedence

MySQL evaluates logical operators in the following order:

1. NOT
2. AND
3. OR

Understanding this order helps avoid unexpected query results.

---

# Common Mistakes

❌ Using commas instead of logical operators.

Wrong:

```sql
WHERE age = 20, course = 'B.Tech';
```

Correct:

```sql
WHERE age = 20
AND course = 'B.Tech';
```

---

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

❌ Confusing AND with OR.

- AND → All conditions must be true.
- OR → At least one condition must be true.

---

# Best Practices

- Use AND when every condition must be satisfied.
- Use OR when any one condition is sufficient.
- Use NOT to exclude records.
- Write queries in a readable format with each condition on a new line.

---

# Interview Questions

1. What is the purpose of logical operators?
2. Difference between AND and OR.
3. What does the NOT operator do?
4. Which operator has higher precedence: AND or OR?
5. Can logical operators be used with the WHERE clause?

---

# Key Takeaways

- Logical operators combine multiple conditions.
- AND requires all conditions to be true.
- OR requires at least one condition to be true.
- NOT excludes matching records.
- Operator precedence is: NOT → AND → OR.