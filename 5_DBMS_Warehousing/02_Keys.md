# 🔑 Keys in Relational Model

## 1. Introduction
In a relational database, **keys** are used to **uniquely identify** rows (tuples) in a table and to **define relationships** between tables.

> 🧠 Think of keys as the *identity cards* of your data — ensuring no two records get mixed up.

---

## 2. Why Are Keys Important?

Keys are essential because they:
- **Uniquely identify** each record in a relation.
- **Prevent duplicate data**.
- **Establish relationships** between tables.
- **Ensure data integrity** (accuracy and consistency).

---

## 3. Types of Keys in Relational Model

Let’s understand each type with **definition**, **example**, and **notes** 👇

---

### 3.1 Super Key

- **Definition:**  
  A **Super Key** is any set of one or more attributes that **uniquely identifies a tuple** in a relation.

- **Example:**
Consider a `STUDENT(RollNo, Name, Email, Phone)` relation.

        Possible Super Keys:
        - {RollNo}  
        - {Email}  
        - {RollNo, Name}  
        - {RollNo, Email}

- ✅ All candidate keys and primary keys are **super keys**.  
- ❌ But not all super keys are **minimal**.

---

### 3.2 Candidate Key

- **Definition:**  
A **Candidate Key** is a **minimal super key**, i.e., no attribute can be removed without losing uniqueness.

- **Example:**
`STUDENT(RollNo, Name, Email)`
    
        Possible Candidate Keys:
        - {RollNo}, 
        - {Email}

- ✅ Every relation can have **one or more candidate keys**.  
- ❌ But only one becomes the **Primary Key**.

---

### 3.3 Primary Key

- **Definition:**  
A **Primary Key** is the **chosen candidate key** that uniquely identifies tuples in a relation which must be NOT NULL.

- **Rules:**
    - Cannot contain NULL values.  
    - Must be **unique** for each record.  
    - Must be **minimal** and **stable** (shouldn’t change frequently).

- **Example:**
`STUDENT(RollNo, Name, Email)`

        → Primary Key = RollNo

- ✅ Used to enforce **Entity Integrity**.

---

### 3.4 Alternate Key

- **Definition:**  
The **remaining candidate keys** after choosing one as the primary key are called **Alternate Keys**.

- **Example:**
`STUDENT(RollNo, Name, Email)`

        → Primary Key = RollNo  
        → Alternate Key = Email

- 💡 You can think of alternate keys as *backup unique identifiers.*

---

### 3.5 Foreign Key

- **Definition:**  
A **Foreign Key** is an attribute (or set of attributes) in one table that **refers to the primary key** of another table.

- **Purpose:**  
- To **link** two relations together.  
- To **maintain referential integrity**.

- **Example:**
`STUDENT(RollNo, Name, DeptID)`
`DEPARTMENT(DeptID, DeptName)`

        - `DeptID` in STUDENT → **Foreign Key**
        - `DeptID` in DEPARTMENT → **Primary Key**

- ⚠️ If a foreign key value doesn’t exist in the parent table → it violates **referential integrity**.

---

### 3.6 Composite Key

- **Definition:**  
A **Composite Key** is formed by combining **two or more attributes** to uniquely identify tuples.

- **Example:**
`ENROLLMENT(StudentID, CourseID, Grade)`

        - Neither StudentID nor CourseID alone can identify a record.
        - But together (StudentID, CourseID) → Unique.

- ✅ Useful for **many-to-many relationships**.

---

### 3.7 Secondary (or Non-Key) Attributes

- **Definition:**  
Attributes that are **not part of any key** and are used just for storing descriptive information.

- **Example:**
`STUDENT(RollNo, Name, Email, Age)`

        - RollNo → Primary Key  
        - Name, Email, Age → Secondary Attributes   
- ✅ Secondary attributes can have duplicate values and NULLs.
---

## 4. Relationship Between Keys

| Concept | Subset of | Example |
|----------|------------|----------|
| **Candidate Key** | Super Key | {RollNo}, {Email} |
| **Primary Key** | Candidate Key | {RollNo} |
| **Alternate Key** | Candidate Key (not chosen) | {Email} |
| **Foreign Key** | Refers to Primary Key of another table | DeptID |
| **Composite Key** | Combines multiple attributes | {StudentID, CourseID} |

---

## 5. Integrity Rules

| Integrity Rule | Description | Example |
|-----------------|-------------|----------|
| **Entity Integrity** | Primary key cannot be NULL or duplicate | RollNo must always have a unique, non-null value |
| **Referential Integrity** | Foreign key must match a valid primary key | DeptID in STUDENT must exist in DEPARTMENT |

---

## 6. Summary

| Key Type | Uniqueness | NULL Allowed | Purpose |
|-----------|-------------|---------------|----------|
| **Super Key** | Yes | Yes | Uniquely identifies tuples |
| **Candidate Key** | Yes | No | Minimal unique key |
| **Primary Key** | Yes | No | Main identifier |
| **Alternate Key** | Yes | No | Backup unique key |
| **Foreign Key** | No | Yes | Link tables |
| **Composite Key** | Yes | No | Combined unique identifier |

---

> 🧠 **In short:**  
> - **Primary Key** = Main identifier  
> - **Foreign Key** = Creates link  
> - **Candidate Key** = Potential primary key  
> - **Super Key** = Big umbrella of uniqueness  
> - **Composite Key** = Combo uniqueness  
> - **Alternate Key** = Backup identifier  