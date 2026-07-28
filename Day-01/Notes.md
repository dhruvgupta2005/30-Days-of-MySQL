# Day 1 - Introduction to Databases

## What is Data?

Data is a collection of raw facts and figures that have not been processed.

### Example

| Roll No | Name | Age |
|---------|------|-----|
| 101 | Rahul | 20 |
| 102 | Priya | 21 |
| 103 | Amit | 19 |

---

## What is Information?

Information is processed data that has meaning.

### Example

Data:
- Dhruv
- Cloud Computing
- 8.74 CGPA

Information:
> Dhruv is a Cloud Computing student with an 8.74 CGPA.

---

## What is a Database?

A database is an organized collection of related data.

### Examples
- College Management System
- Hospital Management System
- Banking System
- Instagram
- Amazon

---

## What is DBMS?

DBMS stands for Database Management System.

It is software used to:
- Store data
- Retrieve data
- Update data
- Delete data
- Manage data securely

Examples:
- MySQL
- PostgreSQL
- Oracle
- SQL Server
- SQLite

---

## What is RDBMS?

RDBMS stands for Relational Database Management System.

It stores data in tables and allows relationships between those tables.

Example:

Students Table

| Student_ID | Name |
|------------|------|
| 1 | Rahul |
| 2 | Priya |

Courses Table

| Course_ID | Course |
|-----------|---------|
| 101 | MySQL |
| 102 | Python |

Enrollment Table

| Student_ID | Course_ID |
|------------|-----------|
| 1 | 101 |
| 2 | 102 |

---

## What is SQL?

SQL stands for Structured Query Language.

SQL is the language used to communicate with relational databases.

Example:

```sql
SELECT * FROM Students;
```

---

## Summary

- Data = Raw facts
- Information = Processed data
- Database = Organized collection of related data
- DBMS = Software that manages databases
- RDBMS = DBMS that stores data in related tables
- SQL = Language used to interact with databases
