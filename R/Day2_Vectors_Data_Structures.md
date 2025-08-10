# 📘 Day 2 – Vectors & Data Structures in R

## 📍 Overview
Today, we will learn about:
- Creating and using **vectors**
- Types of vectors
- **Sequences** and **repetitions**
- Basic **vector operations**
- Introduction to **data structures** in R (lists, matrices, data frames, factors)

---

## 1️⃣ Vectors in R

A **vector** is the most basic data structure in R.  
It contains elements **of the same type**.

### 🖊 Creating Vectors
```r
# Using c() function
num_vec <- c(1, 2, 3, 4, 5)
char_vec <- c("apple", "banana", "cherry")
log_vec <- c(TRUE, FALSE, TRUE)
```

💡 Use `class()` to check the type:
```r
class(num_vec)  # "numeric"
class(char_vec) # "character"
```

---

## 2️⃣ Sequences and Repetitions

### 📌 Sequence
```r
1:5             # 1, 2, 3, 4, 5
seq(1, 10, by=2) # 1, 3, 5, 7, 9
seq(0, 1, length.out=5) # 0.00 0.25 0.50 0.75 1.00
```

### 📌 Repetition
```r
rep(5, times=4)             # 5 5 5 5
rep(c(1, 2), each=3)        # 1 1 1 2 2 2
rep(c("A", "B"), times=2)   # A B A B
```

---

## 3️⃣ Vector Operations

R performs **element-wise operations** on vectors.

```r
a <- c(1, 2, 3)
b <- c(4, 5, 6)

a + b  # 5 7 9
a * b  # 4 10 18
a ^ 2  # 1 4 9

sum(a) # 6
mean(b) # 5
```

---

## 4️⃣ Accessing Vector Elements

```r
vec <- c(10, 20, 30, 40, 50)

vec[1]      # First element → 10
vec[2:4]    # Elements 2 to 4 → 20 30 40
vec[-3]     # All except 3rd → 10 20 40 50
vec[c(1, 5)]# First & last → 10 50
```

---

## 5️⃣ Other Data Structures

### 📌 List – Can store **different** types
```r
my_list <- list(name="Kunal", age=25, scores=c(90, 85, 88))
my_list$name   # "Kunal"
```

### 📌 Matrix – 2D data of same type
```r
m <- matrix(1:6, nrow=2, ncol=3)
```

### 📌 Data Frame – Table-like structure
```r
df <- data.frame(Name=c("A", "B"), Age=c(20, 25))
```

### 📌 Factor – Categorical data
```r
status <- factor(c("pass", "fail", "pass", "pass"))
```

---

## 📝 Mini Exercises

1. Create a numeric vector of 10 random numbers between 1 and 100.
2. Create a sequence from 0 to 50 with step size 5.
3. Create a repetition of the vector `c("R", "is", "fun")` twice.
4. Create a list with your name, age, and a vector of 3 scores.
5. Make a small data frame with columns: Name, Age, and Score.

---

✅ **End of Day 2 Goal:**  
You should now be able to:
- Create and manipulate vectors
- Work with sequences and repetitions
- Perform vectorized operations
- Understand basic data structures in R

---

**Next Step:** [Day 3 – Matrices & Arrays](Day3_Matrices_Arrays.md)
