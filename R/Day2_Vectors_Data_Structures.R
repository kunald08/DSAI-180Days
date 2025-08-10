# 📘 Day 2 – Vectors & Data Structures in R

# 1️⃣ Creating Vectors
num_vec <- c(1, 2, 3, 4, 5)
char_vec <- c("apple", "banana", "cherry")
log_vec <- c(TRUE, FALSE, TRUE)

# Checking the class/type
class(num_vec)   # "numeric"
class(char_vec)  # "character"
class(log_vec)   # "logical"

# 2️⃣ Sequences
seq1 <- 1:5
seq2 <- seq(1, 10, by=2)
seq3 <- seq(0, 1, length.out=5)

# Printing sequences
print(seq1)
print(seq2)
print(seq3)

# 3️⃣ Repetitions
rep1 <- rep(5, times=4)
rep2 <- rep(c(1, 2), each=3)
rep3 <- rep(c("A", "B"), times=2)

print(rep1)
print(rep2)
print(rep3)

# 4️⃣ Vector Operations
a <- c(1, 2, 3)
b <- c(4, 5, 6)

print(a + b)    # Element-wise addition
print(a * b)    # Element-wise multiplication
print(a ^ 2)    # Power operation

print(sum(a))   # Sum of elements
print(mean(b))  # Mean of elements

# 5️⃣ Accessing Elements
vec <- c(10, 20, 30, 40, 50)

print(vec[1])        # First element
print(vec[2:4])      # Elements 2 to 4
print(vec[-3])       # All except 3rd element
print(vec[c(1, 5)])  # First & last elements

# 6️⃣ List Example
my_list <- list(name="Kunal", age=20, scores=c(90, 85, 88))
print(my_list)
print(my_list$name)
print(my_list$age)
print(my_list$scores)

# 7️⃣ Matrix Example
m <- matrix(1:6, nrow=2, ncol=3)
print(m)

# 8️⃣ Data Frame Example
df <- data.frame(Name=c("kunal", "lokendra"), Age=c(21, 20))
print(df)

# 9️⃣ Factor Example
status <- factor(c("pass", "fail", "pass", "pass"))
print(status)
print(levels(status))

# 🔟 Mini Exercises
# 1. Numeric vector of 10 random numbers between 1 and 100
random_vec <- sample(1:100, 10)
print(random_vec)

# 2. Sequence from 0 to 50 with step size 5
seq_ex <- seq(0, 50, by=5)
print(seq_ex)

# 3. Repetition of vector c("R", "is", "fun") twice
rep_ex <- rep(c("R", "is", "fun"), times=2)
print(rep_ex)

# 4. List with name, age, and scores
exercise_list <- list(name="Kunal", age=25, scores=c(95, 88, 91))
print(exercise_list)

# 5. Data frame with Name, Age, Score
exercise_df <- data.frame(Name=c("Kunal", "Amit"), Age=c(25, 30), Score=c(95, 88))
print(exercise_df)
