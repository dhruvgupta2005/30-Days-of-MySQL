# Day 10 - LIKE Operator and Wildcards

## Objective

Learn how to search text using patterns with the LIKE operator and wildcards.

---

# What is LIKE?

The LIKE operator is used to search for text values that match a specified pattern.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE 'pattern';
```

Example:

```sql
SELECT *
FROM students
WHERE student_name LIKE 'R%';
```

This finds students whose names start with R.

---

# Wildcards

MySQL provides wildcards that can be used with LIKE.

## Percentage (%)

The `%` wildcard represents zero or more characters.

Example:

```sql
LIKE 'R%'
```

Matches values starting with R.

Examples:

```text
Rahul
Rohan
Raj
R
```

---

## Underscore (_)

The `_` wildcard represents exactly one character.

Example:

```sql
LIKE 'R_h%'
```

The underscore represents one character between R and h.

---

# Pattern Matching

## Starts With

```sql
SELECT student_name
FROM students
WHERE student_name LIKE 'R%';
```

Finds names starting with R.

---

## Ends With

```sql
SELECT student_name
FROM students
WHERE student_name LIKE '%a';
```

Finds names ending with a.

---

## Contains

```sql
SELECT student_name
FROM students
WHERE student_name LIKE '%an%';
```

Finds names containing "an".

---

# NOT LIKE

NOT LIKE excludes values matching a specified pattern.

Example:

```sql
SELECT *
FROM students
WHERE student_name NOT LIKE 'R%';
```

Displays students whose names do not start with R.

---

# LIKE vs =

`=` is used for exact matching.

Example:

```sql
WHERE course = 'B.Tech';
```

LIKE is used for pattern matching.

Example:

```sql
WHERE course LIKE 'B%';
```

The second query can match multiple values beginning with B.

---

# % vs _

| Wildcard | Meaning |
|----------|---------|
| `%` | Zero or more characters |
| `_` | Exactly one character |

---

# Common Mistakes

Wrong:

```sql
WHERE student_name = 'R%';
```

Correct:

```sql
WHERE student_name LIKE 'R%';
```

---

Wrong:

```sql
WHERE student_name LIKE 'R';
```

This searches for the exact value R.

Correct:

```sql
WHERE student_name LIKE 'R%';
```

This searches for values beginning with R.

---

# Best Practices

- Use LIKE when pattern matching is required.
- Use `%` for zero or more characters.
- Use `_` for exactly one character.
- Use `=` when exact matching is required.
- Use NOT LIKE when excluding a pattern.

---

# Mini Project Scenario

The College Management System can use LIKE for student searches.

Examples:

- Find students whose names start with R.
- Find students whose names contain "an".
- Find courses beginning with B.
- Find students whose names do not start with R.

---

# Interview Questions

1. What is the LIKE operator?
2. What does `%` represent?
3. What does `_` represent?
4. Difference between LIKE and `=`.
5. What is NOT LIKE?
6. How do you find values starting with a particular character?
7. How do you find values ending with a particular character?
8. How do you find values containing a particular pattern?

---

# Key Takeaways

- LIKE is used for pattern matching.
- `%` represents zero or more characters.
- `_` represents exactly one character.
- `NOT LIKE` excludes matching patterns.
- `=` is used for exact matching.