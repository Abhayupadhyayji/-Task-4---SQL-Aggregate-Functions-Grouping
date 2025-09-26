# Task 4 - SQL Aggregate Functions & Grouping

##  Objective
   Use  aggregate functions and  Grouping SQL to summarize and analyze data.

## 🛠 Tools
- DB Browser for SQLite / MySQL Workbench

## 📂 Deliverables
- SQL queries using:
  - `SUM()`
  - `COUNT()`
  - `AVG()`
  - `GROUP BY`
  - `HAVING`

## 🚀 Queries & Explanations

### 1. Count number of employees in each department
```sql
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
