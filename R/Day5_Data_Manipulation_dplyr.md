# Day 5 – Data Manipulation with dplyr

## 1. Introduction
The `dplyr` package in R is a powerful and user-friendly tool for data manipulation. 
It provides a set of intuitive functions to transform, summarize, and explore data easily.

---

## 2. Installing and Loading dplyr
```R
install.packages("dplyr")  # Install
library(dplyr)             # Load
```

---

## 3. The Core Functions of dplyr

### **1. select() – Select columns**
```R
select(data, column1, column2)
select(data, -column_to_exclude)  # Exclude a column
```
**Example:**
```R
select(mtcars, mpg, cyl)
```

---

### **2. filter() – Filter rows**
```R
filter(data, condition)
```
**Example:**
```R
filter(mtcars, mpg > 20)
filter(mtcars, mpg > 20, cyl == 4)
```

---

### **3. mutate() – Create or modify columns**
```R
mutate(data, new_column = existing_column * 2)
```
**Example:**
```R
mutate(mtcars, mpg_kmpl = mpg * 0.425144)
```

---

### **4. group_by() – Group data**
```R
group_by(data, column)
```
**Example:**
```R
group_by(mtcars, cyl)
```

---

### **5. summarise() – Summarize grouped data**
```R
summarise(data, avg = mean(column, na.rm = TRUE))
```
**Example:**
```R
mtcars %>% 
  group_by(cyl) %>% 
  summarise(avg_mpg = mean(mpg))
```

---

## 4. Piping with `%>%`
The **pipe operator** `%>%` from the `magrittr` package (included in `dplyr`) passes the result of one function to the next.

**Example without pipe:**
```R
summarise(group_by(filter(mtcars, mpg > 20), cyl), avg_mpg = mean(mpg))
```

**Example with pipe:**
```R
mtcars %>% 
  filter(mpg > 20) %>% 
  group_by(cyl) %>% 
  summarise(avg_mpg = mean(mpg))
```

Pipes make the code easier to read and follow.

---

## 5. Mini Exercises
1. Select only `mpg` and `hp` columns from `mtcars`.
2. Filter rows where `mpg` is greater than 25.
3. Create a new column `hp_per_cyl` = `hp` / `cyl`.
4. Group the dataset by `gear` and find the average `mpg`.
5. Combine all steps in one pipeline using `%>%`.

---
**End of Day 5 – Data Manipulation with dplyr**
