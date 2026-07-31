# Day 4 - Tables and Data Types

## Objective

Learn what a table is, understand rows and columns, explore commonly used MySQL data types, understand constraints, and create the first table inside the `college_db` database.

---

# What is a Table?

A table is a collection of related data organized into rows and columns.

A database stores multiple tables, and each table stores data about a specific entity.

Example:

college_db

├── students

├── teachers

├── courses

├── attendance

└── fees

---

# Database vs Table

| Database | Table |
|----------|-------|
| Collection of related tables | Collection of related data |
| Stores multiple tables | Stores records in rows and columns |
| Example: college_db | Example: students |

---

# Rows and Columns

## Row

A row represents one complete record.

Example:

| Student ID | Name | Age |
|------------|------|-----|
| 101 | Rahul | 20 |

The entire row represents one student.

---

## Column

A column represents a single attribute of all records.

Example:

Student_ID

Name

Age

Each column stores one type of information.

---

# Data Types

A data type defines what kind of data a column can store.

Choosing the correct data type helps MySQL store data efficiently and prevents invalid data.

---

## INT

Used for whole numbers.

Examples:

- Student ID
- Age
- Roll Number
- Marks

Example:

```sql
age INT
```

---

## VARCHAR

Used for storing text.

Example:

```sql
student_name VARCHAR(50)
```

50 represents the maximum number of characters.

Examples:

Rahul

Dhruv Gupta

Cloud Computing

---

## DATE

Stores dates.

Format:

YYYY-MM-DD

Example:

2026-07-31

---

## DECIMAL

Stores decimal values.

Useful for:

- CGPA
- Salary
- Fees
- Product Price

Example:

```sql
cgpa DECIMAL(3,2)
```

---

# Constraints

Constraints are rules applied to columns.

They help maintain data accuracy and integrity.

---

## NOT NULL

Does not allow empty values.

Example:

```sql
student_name VARCHAR(50) NOT NULL
```

---

## PRIMARY KEY

A PRIMARY KEY uniquely identifies each row in a table.

Properties:

- Unique
- Cannot contain NULL values
- One primary key per table

Example:

```sql
student_id INT PRIMARY KEY
```

---

# Creating the Students Table

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(50),
    admission_date DATE,
    cgpa DECIMAL(3,2)
);
```

---

# SHOW TABLES

Displays all tables in the currently selected database.

Syntax:

```sql
SHOW TABLES;
```

---

# DESCRIBE

Displays the structure of a table.

Syntax:

```sql
DESCRIBE students;
```

or

```sql
DESC students;
```

It shows:

- Column Name
- Data Type
- NULL
- Key

---

# Common Mistakes

❌ Forgetting to select the database before creating a table.

```sql
USE college_db;
```

---

❌ Choosing the wrong data type.

Example:

Using VARCHAR for Age instead of INT.

---

❌ Forgetting to define a PRIMARY KEY.

---

❌ Giving unnecessary large VARCHAR sizes.

Example:

VARCHAR(1000) for a student's name.

---

# Best Practices

- Use meaningful table names.
- Use lowercase naming conventions.
- Choose appropriate data types.
- Always define a PRIMARY KEY.
- Use NOT NULL for mandatory fields.

---

# Key Takeaways

- A table stores data in rows and columns.
- Every column must have a data type.
- INT stores numbers.
- VARCHAR stores text.
- DATE stores dates.
- DECIMAL stores decimal values.
- PRIMARY KEY uniquely identifies each record.
- SHOW TABLES displays all tables.
- DESCRIBE displays the table structure.

📚 Interview Questions
What is a table?
Difference between a database and a table.
Difference between a row and a column.
What is a data type?
Difference between INT and VARCHAR.
What is PRIMARY KEY?
Difference between PRIMARY KEY and NOT NULL.
What is the purpose of DESCRIBE?
What does SHOW TABLES do?
Why is choosing the correct data type important?