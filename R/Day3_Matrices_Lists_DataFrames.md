# Day 3 – Matrices, Lists & DataFrames in R

## 1. Matrices in R
A **matrix** is a two-dimensional data structure where elements are of the same type.

### Creating a Matrix
```r
# matrix(data, nrow, ncol, byrow = FALSE)
mat <- matrix(1:6, nrow = 2, ncol = 3)
print(mat)

# Fill by rows
mat_byrow <- matrix(1:6, nrow = 2, byrow = TRUE)
print(mat_byrow)
```

### Naming Rows and Columns
```r
rownames(mat) <- c("Row1", "Row2")
colnames(mat) <- c("Col1", "Col2", "Col3")
```

### Accessing Matrix Elements
```r
mat[1, 2]     # element at row 1, column 2
mat[ , 2]     # entire column 2
mat[1, ]      # entire row 1
```

### Matrix Operations
```r
mat2 <- matrix(7:12, nrow = 2)
mat + mat2     # element-wise addition
mat * mat2     # element-wise multiplication
t(mat)         # transpose
```

---

## 2. Lists in R
A **list** can hold different types of elements (numbers, strings, vectors, data frames, etc.).

### Creating a List
```r
my_list <- list(Name = "John", Age = 25, Scores = c(90, 85, 88))
```

### Accessing List Elements
```r
my_list$Name       # by name
my_list[[2]]       # by index
my_list[["Scores"]] # by key
```

### Modifying Lists
```r
my_list$Gender <- "Male"   # add new element
my_list$Age <- 26          # update element
```

---

## 3. Data Frames in R
A **data frame** is like a table where each column can have different types.

### Creating a Data Frame
```r
df <- data.frame(
  Name = c("John", "Alice", "Bob"),
  Age = c(25, 30, 28),
  Score = c(90, 85, 88)
)
```

### Accessing Data Frame Elements
```r
df$Name       # column by name
df[1, ]       # first row
df[ , 2]      # second column
df[1:2, "Age"] # specific rows and column
```

### Adding and Removing Columns
```r
df$Gender <- c("Male", "Female", "Male") # add column
df$Score <- NULL                         # remove column
```

---

## 4. Converting Between Data Structures
```r
as.matrix(df)     # data frame to matrix
as.data.frame(mat) # matrix to data frame
```

---

## 5. Mini Exercises
1. Create a 3x3 matrix and fill it with numbers from 1 to 9.
2. Create a list with your name, age, and a vector of three scores.
3. Create a data frame for 4 students with Name, Age, and Marks.
4. Access the 2nd column of the data frame.
5. Add a new column `Pass` based on Marks > 50.
