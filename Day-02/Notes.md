# Day 2 - MySQL Server, CLI & Basic SQL

## Objective

Learn how MySQL works, connect to the MySQL Server using the Command Line Interface (CLI), understand SQL statements, and execute basic SQL queries.

---

# 1. What is MySQL Server?

MySQL Server is the actual database software that stores and manages data.

It receives SQL commands from clients like MySQL Workbench or the MySQL CLI, processes them, and returns the results.

Flow:

User
↓
MySQL CLI / MySQL Workbench
↓
MySQL Server
↓
Database

---

# 2. What is MySQL CLI?

CLI stands for Command Line Interface.

It allows us to communicate directly with the MySQL Server by typing SQL commands.

Example:

```bash
mysql -u root -p
```

Explanation:

- mysql → Starts the MySQL client.
- -u → Specifies the username.
- root → Username.
- -p → Prompts for the password.

---

# 3. What is MySQL Workbench?

MySQL Workbench is a graphical interface (GUI) for MySQL.

It allows us to:

- Write SQL queries
- Create databases
- Manage tables
- Import and export data
- Design database models

Both MySQL CLI and Workbench connect to the same MySQL Server.

---

# 4. SQL Statement

A SQL statement is a complete instruction given to MySQL.

Example:

```sql
SELECT 'Hello MySQL';
```

---

# 5. SQL Keywords

Keywords are reserved words with predefined meanings.

Examples:

- SELECT
- CREATE
- INSERT
- UPDATE
- DELETE
- DROP
- ALTER

Best Practice:

Always write SQL keywords in uppercase.

Example:

```sql
SELECT NOW();
```

---

# 6. Semicolon (;)

The semicolon indicates the end of a SQL statement.

Example:

```sql
SELECT NOW();
```

Without a semicolon, MySQL waits for the statement to finish.

---

# 7. Comments

Single-line comment:

```sql
-- This is a comment
```

Multi-line comment:

```sql
/*
This is a
multi-line comment.
*/
```

Comments are ignored by MySQL.

---

# 8. SQL is Case-Insensitive

These statements are equivalent:

```sql
SELECT NOW();
```

```sql
select now();
```

However, writing SQL keywords in uppercase is recommended for better readability.

---

# Key Takeaways

- MySQL Server stores data.
- CLI and Workbench are clients that communicate with the server.
- SQL statements end with a semicolon.
- SQL keywords are case-insensitive.
- Comments improve code readability without affecting execution.