# Day 9 – Regression in R

## 1. Introduction
Regression analysis is used to understand the relationship between variables.  
In R, we use the function **`lm()`** (linear model) to fit regression models.  

Day 9 covers:
- Simple linear regression
- Plotting regression lines
- Interpreting model summaries

---

## 2. Simple Linear Regression
The formula:
```
y ~ x
```
Here:
- `y` → dependent (response) variable
- `x` → independent (predictor) variable

**Example:**
```R
# Using built-in dataset
data(mtcars)

# Predict mpg (miles per gallon) using hp (horsepower)
model <- lm(mpg ~ hp, data = mtcars)
summary(model)
```

---

## 3. Interpreting Model Summary
The `summary(model)` output shows:
- **Coefficients:** Estimate of intercept and slope.
  - Intercept → Expected value of y when x = 0
  - Slope → Change in y for each unit increase in x
- **R-squared:** Proportion of variance in y explained by x.
- **p-value:** Significance of predictors.

---

## 4. Plotting Regression Line
We can visualize regression results by adding the line of best fit to a scatter plot.

```R
# Scatter plot of mpg vs hp
plot(mtcars$hp, mtcars$mpg, 
     main="Regression of MPG on Horsepower",
     xlab="Horsepower", ylab="MPG", pch=19, col="blue")

# Add regression line
abline(model, col="red", lwd=2)
```

---

## 5. Another Example
```R
# Predict weight (wt) using mpg
model2 <- lm(wt ~ mpg, data=mtcars)
summary(model2)

# Plot
plot(mtcars$mpg, mtcars$wt, 
     main="Regression of Weight on MPG",
     xlab="MPG", ylab="Weight", pch=19, col="darkgreen")
abline(model2, col="purple", lwd=2)
```

---

## 6. Exercises
1. Fit a regression model predicting `mpg` from `wt`. Interpret slope and intercept.
2. Fit a regression model predicting `hp` from `wt`. What does the R² tell you?
3. Visualize both regression models using scatter plots and regression lines.

---

**End of Day 9 – Regression in R**
