# 📘 Data Retrieval with SQL

The **SELECT statement** is the most fundamental SQL command for fetching data from one or more tables.

---

## 1. 🔹 Basic Data Retrieval
**Syntax:**
```sql
SELECT column1, column2, ...
FROM table_name;
```
**Example:** Retrieve all records from the employees table:
```sql
SELECT * FROM employees;
```

## 2. 🔹 Selecting Specific Columns

Retrieve only chosen columns by listing them:
```sql
SELECT name, department
FROM employees;
```

## 3. 🔹 Using Aliases

Aliases give temporary names to columns/tables.

**Example:**
```sql
SELECT name AS employee_name, department AS dept
FROM employees
```

## 4. 🔹 Filtering Data with WHERE Clause

Filter rows based on conditions.

**Example:**
```sql
SELECT * FROM employees
WHERE age > 30;
```

## 5. 🔹 Filtering with IN / NOT IN

Check if values exist in a list.

- Employees in Sales or Marketing:
```sql
SELECT * FROM employees 
WHERE department IN ('Sales', 'Marketing');
```
- Employees NOT in Sales or Marketing:
```sql
SELECT * FROM employees 
WHERE department NOT IN ('Sales', 'Marketing');
```

## 6. 🔹 Multiple Conditions (AND / OR)

Employees older than 25 in IT:
```sql
SELECT * FROM employees
WHERE age > 25 AND department = 'IT';
```

Employees older than 30 OR in HR:
```sql
SELECT * FROM employees
WHERE age > 30 OR department = 'HR';
```

## 7. 🔹 Comparison Operators

- [ >, <, >=, <= ]

- BETWEEN Range check

- LIKE Pattern match

- IS NULL No value

- IS NOT NULL Value exists

Examples:
```sql
-- Age between 25 and 30
SELECT * FROM employees
WHERE age BETWEEN 25 AND 30;

-- Name starts with 'J'
SELECT * FROM employees
WHERE name LIKE 'J%';

-- No department
SELECT * FROM employees
WHERE department IS NULL;

-- Department assigned
SELECT * FROM employees
WHERE department IS NOT NULL;
```

## 8. 🔹 Sorting Data (ORDER BY)

Sort results by one or more columns.

**Examples:**
```sql
-- Sort by age ascending
SELECT * FROM employees
ORDER BY age ASC;

-- Sort by age descending
SELECT * FROM employees
ORDER BY age DESC;
```

## 9. 🔹 Multiple Column Sorting

Sort by multiple columns.

**Example:**
```sql
SELECT * FROM employees
ORDER BY department ASC, age DESC;
```