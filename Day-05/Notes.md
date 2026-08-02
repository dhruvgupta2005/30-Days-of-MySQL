# Day 5 - INSERT INTO and Adding Data

## Objective

Learn how to insert data into a table using the INSERT INTO statement, understand records, insert single and multiple rows, and learn the concept of NULL values.

---

# What is a Record?

A record is one complete row in a table.

Each record represents one entity.

Example:

| Student_ID | Student_Name | Age | Course |
|------------|--------------|-----|---------|
| 101 | Rahul Sharma | 20 | B.Tech |

The above row is one complete record.

---

# INSERT INTO

The INSERT INTO statement is used to add new records into a table.

Syntax:

```sql
INSERT INTO table_name
VALUES (...);
```

Example:

```sql
INSERT INTO students
VALUES
(
101,
'Rahul Sharma',
20,
'B.Tech',
'2026-07-31',
8.75
);
```

---

# Inserting Multiple Records

Multiple records can be inserted using a single INSERT statement.

Example:

```sql
INSERT INTO students
VALUES
(103,'Amit Singh',19,'BBA','2026-07-29',8.20),
(104,'Neha Gupta',22,'MBA','2026-07-28',9.30),
(105,'Rohan Patel',20,'B.Tech','2026-07-27',7.95);
```

Advantages:

- Faster execution
- Cleaner code
- Reduces the number of SQL statements

---

# NULL

NULL represents a missing or unknown value.

It does NOT mean:

- 0
- Empty String ('')
- False

Example:

```sql
INSERT INTO students
VALUES
(
106,
'Karan Mehta',
20,
'B.Tech',
'2026-08-01',
NULL
);
```

Meaning:

The student's CGPA is not available yet.

---

# Rules While Inserting Data

- Integer values do not require quotes.
- Text values must be enclosed in single quotes.
- Date values should follow YYYY-MM-DD format.
- Decimal values should match the column's data type.
- Values must be inserted in the same order as the table columns.

---

# Common Mistakes

❌ Forgetting single quotes around text values.

Wrong:

```sql
Rahul
```

Correct:

```sql
'Rahul'
```

---

❌ Forgetting the semicolon.

Every SQL statement should end with:

```sql
;
```

---

❌ Using duplicate PRIMARY KEY values.

PRIMARY KEY values must always be unique.

---

❌ Inserting values in the wrong order.

Always follow the table structure.

---

# Best Practices

- Use meaningful and realistic data.
- Insert multiple records in a single statement whenever possible.
- Check PRIMARY KEY values before inserting.
- Keep data formats consistent.
- Use NULL only when information is unavailable.

---

# Interview Questions

1. What is a record?
2. What is the purpose of INSERT INTO?
3. Difference between NULL and 0.
4. Why are string values enclosed in single quotes?
5. Can a PRIMARY KEY contain duplicate values?
6. Can a PRIMARY KEY contain NULL values?
7. How do you insert multiple records in one query?
8. What happens if you insert duplicate PRIMARY KEY values?

---

# Key Takeaways

- A record is one complete row in a table.
- INSERT INTO is used to add data.
- Multiple rows can be inserted using one query.
- NULL represents missing or unknown data.
- PRIMARY KEY values must be unique.
- Text values must be enclosed in single quotes.