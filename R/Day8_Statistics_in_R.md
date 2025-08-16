# Day 8 – Statistics in R

## 1. Introduction
Statistics is the backbone of data analysis.  
In R, you can easily compute descriptive statistics and perform hypothesis testing.  
Day 8 focuses on:
- Descriptive statistics (`mean`, `median`, `sd`, `var`)
- Hypothesis testing (`t.test`, `chisq.test`)

---

## 2. Descriptive Statistics
Descriptive statistics summarize and describe the main features of a dataset.

### Common Functions:
- **`mean(x)`** → Arithmetic average
- **`median(x)`** → Middle value
- **`sd(x)`** → Standard deviation (spread of data)
- **`var(x)`** → Variance (square of sd)
- **`summary(x)`** → Gives min, 1Q, median, mean, 3Q, max

**Example:**
```R
data <- c(10, 20, 30, 40, 50)

mean(data)      # 30
median(data)    # 30
sd(data)        # 15.81
var(data)       # 250
summary(data)   # Min, 1Q, Median, Mean, 3Q, Max
```

---

## 3. Hyposthesis Testing
Hypothesis testing helps us make inferences about a population using sample data.

### 3.1 t-test
Used to compare the means of two groups.

**One-sample t-test:**
```R
t.test(data, mu=25)
```
**Two-sample t-test:**
```R
group1 <- c(5, 6, 7, 8, 9)
group2 <- c(6, 7, 8, 9, 10)

t.test(group1, group2)
```

### 3.2 Chi-Square Test

Used for testing relationships between categorical variables.

**Example:**
```R
data_matrix <- matrix(c(20, 30, 50, 80), nrow=2)

chisq.test(data_matrix)
```

---

## 4 Mini Exercises
1. Compute mean, median, variance, and standard deviation for mtcars$mpg.

2. Perform a one-sample t-test to check if the average mpg of cars is 20.

3. Run a chi-square test on a 2x2 matrix of your choice.
---