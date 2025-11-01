# Relational Model

## 1. Basic ideas & vocabulary

- **Relation**: a table (name + rows + columns).
- **Tuple**: a single row in a relation.
- **Attribute**: a column (has a name and a domain).
- **Domain**: allowed values for an attribute (e.g., INTEGER, DATE, VARCHAR).
- **Schema**: R(A, B, C) — the structure of a relation (attribute names and types).
- **Instance**: the set of tuples currently stored in a relation.

Example schema and instance:

Student(sid, name, city)

| sid | name  | city |
|-----|-------|------|
| 1   | Kunal | Pune |
| 2   | Riya  | Delhi|
| 3   | Ali   | Pune |

## 2. Keys — uniqueness & identification

- **Superkey**: any set of attributes that uniquely identifies tuples.
- **Candidate key**: a minimal superkey (no proper subset is a superkey).
- **Primary key**: one candidate key chosen to identify tuples.
- **Foreign key**: attribute(s) in one relation referencing the primary key of another relation.

Example:

Student(sid, name, city) — `sid` is a candidate key (and the primary key).

Enrollments(eid, sid, cid) — `sid` is a foreign key referencing `Student.sid`.

## 3. Integrity constraints

- **Domain constraint**: attribute values must belong to the attribute's domain (e.g., age ≥ 0).
- **Entity integrity** (key constraint): primary key cannot be NULL.
- **Referential integrity**: foreign key values must be NULL (if allowed) or must match a primary key in the referenced relation.
- **Semantic constraints**: additional business rules (e.g., salary > 0) enforced via CHECK constraints or application logic.

These constraints maintain correctness and consistency of data.

## 4. Relational algebra — the procedural query language

Relational algebra consists of operators that take relations as input and produce relations as output.

Core operators:

- Selection `σ_{predicate}(R)` — choose rows satisfying `predicate`.
	- Example: `σ_{city='Pune'}(Student)` selects students from Pune.
- Projection `π_{attr-list}(R)` — choose columns and remove duplicates.
	- Example: `π_{name,city}(Student)`.
- Union `R ∪ S` (same schema required).
- Set difference `R − S`.
- Intersection `R ∩ S`.
- Cartesian product `R × S`.
- Join operators:
	- Theta-join `R ⋈_{R.a = S.b} S` (join on condition).
	- Natural join `R ⨝ S` (join on all common attributes, removes duplicate columns).
	- Outer joins: `LEFT`, `RIGHT`, `FULL` — preserve non-matching tuples and fill missing attributes with NULL.
- Rename `ρ` — rename relations or attributes.

Extended operations include aggregation (SUM, COUNT, GROUP BY) and grouping.

Simple examples:

- Students in Pune: `σ_{city='Pune'}(Student)`
- Names of students: `π_{name}(Student)`
- Student-course pairs: `Student ⨝ Enrollments` (join on `sid`)

## 5. Relational calculus — non-procedural queries

Relational calculus expresses queries declaratively (what to retrieve, not how).

- **Tuple Relational Calculus (TRC)**: { t | P(t) } where `t` is a tuple variable and `P(t)` a predicate.
	- Example: `{ s.name | Student(s) AND s.city = 'Pune' }` — names of students from Pune.
- **Domain Relational Calculus (DRC)**: variables represent domain values instead of whole tuples.
	- Example: `{ n | ∃sid ∃c (Student(sid, n, 'Pune')) }`.

Relational algebra and relational calculus are equivalent in expressive power (relational completeness).

## 6. Functional dependencies (FDs)

- A functional dependency `X -> Y` means: if two tuples agree on attributes `X` then they must agree on attributes `Y`.
	- Example: `sid -> name, city`.

Uses of FDs:

- Capture real-world constraints.
- Drive normalization to remove redundancy and update anomalies.

Armstrong's axioms (basic inference rules for FDs):

1. Reflexivity: if `Y ⊆ X` then `X -> Y`.
2. Augmentation: if `X -> Y` then `XZ -> YZ`.
3. Transitivity: if `X -> Y` and `Y -> Z` then `X -> Z`.

Compute closure `X+` to find all attributes functionally determined by `X`. This is used to check keys and implied FDs.

## 7. Normal forms — reducing redundancy and anomalies

Normalization organizes schemas to avoid update/insert/delete anomalies.

- **1NF (First Normal Form)**: atomic attribute values (no repeating groups).
- **2NF (Second Normal Form)**: in 1NF, and every non-prime attribute fully depends on the primary key (no partial dependency on part of a composite key).
- **3NF (Third Normal Form)**: in 2NF and no transitive dependency of non-prime attributes on the primary key.
	- Formal rule: For every FD `X -> A`, either `A ∈ X`, or `X` is a superkey, or `A` is prime (part of some candidate key).
- **BCNF (Boyce-Codd Normal Form)**: stronger than 3NF — for every non-trivial FD `X -> A`, `X` must be a superkey.

BCNF removes redundancy more aggressively but can sometimes break dependency preservation; 3NF is a common compromise.

Higher normal forms (4NF, 5NF) handle multi-valued and join dependencies.

## 8. Decomposition — lossless-join & dependency preservation

When decomposing a relation `R` into `R1, R2, ...` we aim for:

- **Lossless-join decomposition**: `R1 ⋈ R2 = R` for all valid instances. A sufficient condition for `R = R1 ⋈ R2` to be lossless is that `(R1 ∩ R2) -> R1` or `(R1 ∩ R2) -> R2`.
- **Dependency preservation**: all original FDs should be enforceable by enforcing FDs on the decomposed relations, without requiring expensive joins.

Often, BCNF ensures lossless decomposition but may sacrifice dependency preservation; 3NF usually preserves dependencies.

Rule of thumb: prefer lossless + dependency-preserving decompositions. If forced, choose BCNF for strict redundancy elimination or 3NF to preserve dependencies.

## 9. Keys & closure: how-to

To compute closure `X+` given a set of FDs:

1. Initialize `X+ := X`.
2. For each FD `Y -> Z`, if `Y ⊆ X+` then `X+ := X+ ∪ Z`.
3. Repeat until no new attributes are added.

If `X+` contains all attributes of relation `R`, then `X` is a superkey.

Use this to find candidate keys, check lossless-join conditions, and test FD implications.

## 10. Mapping relational concepts to SQL

| Relational concept | SQL example |
|---|---|
| Relation | `CREATE TABLE Student (sid INT PRIMARY KEY, name TEXT, city TEXT);` |
| Tuple | `INSERT INTO Student VALUES (1, 'Kunal', 'Pune');` |
| Projection `π` | `SELECT name, city FROM Student;` |
| Selection `σ` | `SELECT * FROM Student WHERE city = 'Pune';` |
| Join | `SELECT * FROM Student s JOIN Enroll e ON s.sid = e.sid;` |

Integrity constraints correspond to `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, and `CHECK` in DDL. SQL also supports `GROUP BY`, `HAVING`, aggregates and window functions.

## 11. Common pitfalls & quick tips

- Memorize formal definitions: relation, schema, instance, FD, key.
- Practice translating English constraints to FDs and vice versa.
- Practice closures and proving keys by computing `X+`.
- Practice decompositions: show lossless using the intersection-key test and check dependency preservation.
- Know relational algebra operators and how to translate simple queries to/from SQL.
- Understand the difference between 3NF and BCNF: BCNF is stricter but may not preserve dependencies.

## 12. Small worked example

Given schema: `R(A, B, C)` with FDs: `A -> B`, `B -> C`.

Compute `A+`:

1. Start with `{A}`.
2. From `A -> B` add `B` → `{A, B}`.
3. From `B -> C` add `C` → `{A, B, C}`.

Thus `A+ = {A, B, C}`, so `A` is a key.

Check BCNF:

`B -> C` violates BCNF because `B` is not a superkey (`B+ = {B, C}`).

Decompose into `R1(B, C)` and `R2(A, B)`.

Lossless: intersection is `B`, and `B -> C` holds in `R1` so intersection is a key for `R1` — decomposition is lossless.

Dependency preservation: `A -> B` is preserved in `R2` and `B -> C` in `R1` — both preserved.

## 13. Summary — quick checklist

- Know: relation, tuple, attribute, schema, instance.
- Keys: superkey, candidate key, primary key, foreign key.
- Integrity constraints: domain, entity, referential.
- Be fluent with relational algebra and basic SQL equivalents.
- Understand FDs, closure, Armstrong's axioms.
- Normal forms: 1NF → 2NF → 3NF → BCNF — know trade-offs.
- Know lossless-join test and dependency preservation concept.

