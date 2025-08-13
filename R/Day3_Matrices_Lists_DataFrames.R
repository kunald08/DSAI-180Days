# Day 3 – Matrices, Lists & DataFrames in R (Practice)

# 1. Matrices

# Create a 2x3 matrix
mat <- matrix(2:7, nrow = 2, ncol = 3)
print("Matrix:")
print(mat)

# Create a matrix filled by rows
mat_byrow <- matrix(1:6, nrow = 2, byrow = TRUE)
print("Matrix by rows:")
print(mat_byrow)

# Name rows and columns
rownames(mat) <- c("Row1", "Row2")
colnames(mat) <- c("Col1", "Col2", "Col3")
print("Named matrix:")
print(mat)

# Access elements
print(mat[1, 2])   # Row 1, Col 2
print(mat[, 2])    # Column 2
print(mat[1, ])    # Row 1

# Matrix operations
mat2 <- matrix(7:12, nrow = 2)
print("Matrix Addition:")
print(mat + mat2)
print("Matrix Multiplication:")
print(mat * mat2)
print("Transpose:")
print(t(mat))


# 2. Lists

# Create list
my_list <- list(Name = "John", Age = 25, Scores = c(90, 85, 88))
print("List:")
print(my_list)

# Access list elements
print(my_list$Name)
print(my_list[[2]])
print(my_list[["Scores"]])

# Modify list
my_list$Gender <- "Male"
my_list$Age <- 26
print("Updated list:")
print(my_list)


# 3. Data Frames

# Create a data frame
df <- data.frame(
  Name = c("John", "Alice", "Bob"),
  Age = c(25, 30, 28),
  Score = c(90, 85, 88)
)
print("Data Frame:")
print(df)

# Access elements
print(df$Name)
print(df[1, ])
print(df[, 2])
print(df[1:2, "Age"])

# Add and remove columns
df$Gender <- c("Male", "Female", "Male")
print("Data Frame with Gender:")
print(df)

df$Score <- NULL
print("Data Frame without Score:")
print(df)


# 4. Conversions
mat_from_df <- as.matrix(df)
print("Matrix from Data Frame:")
print(mat_from_df)

df_from_mat <- as.data.frame(mat)
print("Data Frame from Matrix:")
print(df_from_mat)


# 5. Mini Exercises

# 1. Create 3x3 matrix from 1 to 9
m_ex <- matrix(1:9, nrow = 3)
print(m_ex)

# 2. Create list with name, age, and scores
list_ex <- list(Name = "Kunal", Age = 22, Scores = c(85, 90, 95))
print(list_ex)

# 3. Create a data frame for 4 students
df_ex <- data.frame(
  Name = c("A", "B", "C", "D"),
  Age = c(20, 21, 22, 23),
  Marks = c(55, 45, 75, 65)
)
print(df_ex)

# 4. Access 2nd column
print(df_ex[, 2])

# 5. Add Pass column based on Marks > 50
df_ex$Pass <- df_ex$Marks > 50
print(df_ex)
