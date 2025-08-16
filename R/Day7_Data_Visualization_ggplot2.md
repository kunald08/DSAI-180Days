# Day 7 – Data Visualization with ggplot2

## 1. Introduction
Base R graphics are simple, but **ggplot2** (part of the `tidyverse`) provides a **powerful and layered system** for creating customizable and beautiful plots.  

`ggplot2` follows the **Grammar of Graphics** idea:  
- You build plots step by step (layers).  
- Start with data → define aesthetics → add geometry → customize.  

---

## 2. Installing & Loading `ggplot2`

```R
install.packages("ggplot2")   # Only once
library(ggplot2)
```

---

## 3. Basic Structure of `ggplot2`
Every ggplot has 3 main parts:  

```R
ggplot(data, aes(x=..., y=...)) + 
  geom_...( ) +
  other_layers
```

- **data** → The dataset to use.  
- **aes()** → Aesthetics (mapping of variables to axes, color, size, etc).  
- **geom_...()** → Defines the type of plot (scatter, bar, line, etc).  

---

## 4. Scatter Plot (`geom_point()`)

Used to show the relationship between two continuous variables.

```R
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(color="blue", size=3) +
  labs(title="Car Weight vs MPG",
       x="Weight (1000 lbs)",
       y="Miles Per Gallon")
```

**Add grouping (color by cylinder):**
```R
ggplot(mtcars, aes(x=wt, y=mpg, color=factor(cyl))) +
  geom_point(size=3) +
  labs(title="Car Weight vs MPG by Cylinders")
```

---

## 5. Bar Plot (`geom_bar()` and `geom_col()`)

### `geom_bar()` → For counts (frequency).
```R
ggplot(mtcars, aes(x=factor(cyl))) +
  geom_bar(fill="orange") +
  labs(title="Number of Cars by Cylinders", x="Cylinders", y="Count")
```

### `geom_col()` → For pre-summarized data (uses y-values).
```R
df <- data.frame(
  category=c("A", "B", "C"),
  values=c(10, 23, 15)
)

ggplot(df, aes(x=category, y=values)) +
  geom_col(fill="purple") +
  labs(title="Custom Values Bar Plot", x="Category", y="Values")
```

---

## 6. Customizing Plots

### Colors & Themes
```R
ggplot(mtcars, aes(x=wt, y=mpg, color=factor(gear))) +
  geom_point(size=3) +
  theme_minimal() +
  labs(title="Scatter Plot with Theme",
       subtitle="Using ggplot2 themes",
       caption="Data: mtcars")
```

Available themes: `theme_gray()`, `theme_bw()`, `theme_minimal()`, `theme_classic()`.  

---

### Changing Legends & Axis
```R
ggplot(mtcars, aes(x=wt, y=mpg, color=factor(gear))) +
  geom_point(size=3) +
  labs(color="Gear Type",   # Legend title
       x="Car Weight", 
       y="Miles per Gallon") +
  theme_classic()
```

---

### Faceting (Subplots by Category)
```R
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point() +
  facet_wrap(~cyl)   # Separate plot for each cylinder group
```

---

## 7. Mini Exercises
1. Create a scatter plot of `hp` vs `mpg` colored by `gear`.  
2. Plot the count of cars by `gear` using `geom_bar()`.  
3. Make a column chart for a custom dataset (like sales across months).  
4. Try different themes (`theme_bw`, `theme_classic`).  
5. Use `facet_wrap()` to split scatter plots by `cyl`.  
