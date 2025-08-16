# Day 6 – Basic Visualization (Base R)

## 1. Introduction
Visualization is one of the most important aspects of data analysis.  
Base R provides simple yet powerful plotting functions for visualizing data.  
On Day 6, we focus on **Scatter Plots, Histograms, and Boxplots**.

---

## 2. Scatter Plots
Scatter plots are used to visualize the relationship between two continuous variables.

**Syntax:**
```R
plot(x, y, main="Title", xlab="X-axis", ylab="Y-axis", col="color", pch=19)
```

**Example:**
```R
plot(mtcars$wt, mtcars$mpg, 
     main="Car Weight vs MPG",
     xlab="Weight (1000 lbs)", ylab="Miles Per Gallon",
     col="blue", pch=19)
```

---

## 3. Histograms
Histograms display the distribution of a numeric variable.

**Syntax:**
```R
hist(vector, main="Title", xlab="X-axis", col="color", border="color")
```

**Example:**
```R
hist(mtcars$mpg,
     main="Distribution of MPG",
     xlab="Miles Per Gallon",
     col="lightgreen", border="black")
```

---

## 4. Boxplots
Boxplots (or whisker plots) show the distribution of data and identify outliers.

**Syntax:**
```R
boxplot(x, main="Title", ylab="Y-axis", col="color")
```

**Example:**
```R
boxplot(mtcars$mpg,
        main="Boxplot of MPG",
        ylab="Miles Per Gallon",
        col="orange")
```

**Boxplot by group:**
```R
boxplot(mpg ~ cyl, data=mtcars,
        main="MPG by Number of Cylinders",
        xlab="Cylinders", ylab="Miles Per Gallon",
        col=c("pink","lightblue","lightgreen"))
```

---

## 5. Mini Exercises
1. Create a scatter plot of `hp` (horsepower) vs `mpg` in `mtcars`.
2. Plot a histogram of `wt` (weight) from `mtcars`.
3. Draw a boxplot of `hp` grouped by `gear` in `mtcars`.

---
**End of Day 6 – Basic Visualization (Base R)**
