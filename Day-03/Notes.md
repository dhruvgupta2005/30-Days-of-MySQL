# Day 3 - Working with Databases

## Objective

Learn how to create, select, view, and delete databases in MySQL.

---

# What is a Database?

A database is an organized collection of related data.

Example:

college_db

├── students

├── teachers

├── courses

├── attendance

└── fees

A database contains multiple tables.

---

# Database vs Table

| Database | Table |
|-----------|-------|
| Collection of tables | Collection of rows and columns |
| Stores related data | Stores actual records |
| Example: college_db | Example: students |

---

# System Databases

## mysql

Stores:

- User accounts
- Passwords
- Privileges

---

## information_schema

Stores metadata about databases.

Examples:

- Database names
- Table names
- Column names

---

## performance_schema

Used to monitor MySQL performance.

Mostly used by database administrators.

---

## sys

Provides simplified views of performance information.

Built on top of performance_schema.

---

# SHOW DATABASES

Displays all databases available on the MySQL Server.

Syntax:

SHOW DATABASES;

---

# CREATE DATABASE

Creates a new database.

Syntax:

CREATE DATABASE database_name;

Example:

CREATE DATABASE college_db;

---

# USE

Selects the database to work with.

Syntax:

USE database_name;

Example:

USE college_db;

---

# SELECT DATABASE()

Displays the currently selected database.

Syntax:

SELECT DATABASE();

---

# DROP DATABASE

Deletes an entire database permanently.

Syntax:

DROP DATABASE database_name;

Example:

DROP DATABASE test_day2;

Warning:

Once deleted, all tables and data are lost.

---

# Best Practices

- Use lowercase names.
- Use underscores instead of spaces.
- Choose meaningful names.
- Never use DROP DATABASE without confirming.

---

# Key Takeaways

- A database stores multiple tables.
- SHOW DATABASES displays all databases.
- USE changes the active database.
- SELECT DATABASE() shows the active database.
- DROP DATABASE permanently deletes a database.