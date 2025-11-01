# 🧠 DBMS 

## 1. Data
- **Data** = raw facts or figures — unorganized and without meaning.  
  - Example: `Kunal`, `23`, `Pune`, `85`
- On their own, they don’t make sense until we connect them.  
👉 **Data = unprocessed info**

---

## 2. Database (DB)
- A **database** is an organized collection of related data that can be easily accessed, managed, and updated.  
- Example: A student database may store details like name, roll no, marks, etc.  
- Think of it as a **digital filing cabinet** — structured and searchable.

---

## 3. DBMS (Database Management System)
- **DBMS** is the software that helps users create, manage, and interact with databases.  
- It hides low-level details and offers:
  - Data storage and retrieval  
  - Consistency & security  
  - Support for multiple users  

**Examples:** MySQL, PostgreSQL, Oracle, MongoDB

---

## 4. History of DBMS

| Era | Type | Description |
|------|------|-------------|
| **1960s** | File Systems / Hierarchical DBMS | Data stored in files; difficult to manage relationships (IMS, IDS). |
| **1970s** | Relational Model (E. F. Codd) | Data in tables (rows & columns). SQL introduced. |
| **1980s–90s** | Object-Oriented & Distributed DBs | Added complex data types and client-server systems. |
| **2000s+** | NoSQL & NewSQL | For large, flexible, web-scale data (MongoDB, Cassandra). |
| **Now** | Cloud / Big Data / Warehousing | Handles massive structured + unstructured data. |

---

## 5. Why Use DBMS?

### ⚠️ Problems with File Systems
- Data duplication  
- Inconsistency  
- Hard to access specific data  
- Poor security & backup  
- Difficult multi-user access  

### ✅ DBMS Solves These
- Reduces redundancy  
- Maintains consistency  
- Provides security & privacy  
- Supports concurrency  
- Easy backup and recovery  
- Querying via SQL  

---

## 6. File System vs DBMS

| Feature | File System | DBMS |
|----------|--------------|------|
| **Data Storage** | Separate files | Integrated tables |
| **Access** | Custom program | SQL queries |
| **Redundancy** | High | Low |
| **Security** | Basic | Strong (role-based) |
| **Backup** | Manual | Built-in |
| **Data Integrity** | Hard | Enforced via constraints |
| **Concurrency** | Poor | Excellent (transactions) |

---

## 7. Database Design Process
Building a database is like constructing a building — **plan first, then build**.

### Steps:
1. **Requirement Analysis** – understand what data to store.  
2. **Conceptual Design** – create an **ER diagram**.  
3. **Logical Design** – convert ER to relational schema.  
4. **Normalization** – remove redundancy.  
5. **Physical Design** – decide storage and indexing.  
6. **Implementation** – create tables via SQL.  
7. **Testing & Maintenance** – ensure performance and correctness.

---

## 8. Data Models
A **data model** defines *how data is structured and related* inside the database.

### Types:
1. **Hierarchical Model** – tree-like parent-child structure.  
   - ✅ Fast; ❌ Rigid  
2. **Network Model** – graph-like; many-to-many links.  
   - ❌ Complex to maintain  
3. **Relational Model** – data in tables using SQL.  
   - ✅ Most widely used  
4. **Object-Oriented Model** – data stored as objects.  
   - Used in multimedia/complex apps  
5. **Entity-Relationship (ER) Model** – conceptual model with entities, attributes, and relationships.  

---

> 🧩 **Summary:**  
> - Data = raw  
> - Database = organized data  
> - DBMS = software that manages database  
> - File systems are outdated for large, multi-user environments  
> - Database design involves careful planning using models and normalization  
