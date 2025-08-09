# 📘 Day 1 – Getting Started & R Basics

## 📍 Overview
Today, we will:
- Install **R** and **RStudio**
- Learn the **RStudio interface**
- Understand **variables** and **data types**
- Perform **basic math operations**
- Use **functions** and explore the **help system** in R

---

## 1️⃣ Install R and RStudio

**R** → Programming language for statistical computing and data analysis.  
**RStudio** → IDE (Integrated Development Environment) for R that makes coding easier.

### 🔽 Installation Steps
1. **Install R**
   - Download: [https://cran.r-project.org/](https://cran.r-project.org/)
   - Choose your OS and follow the installation prompts.
2. **Install RStudio**
   - Download: [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
   - Install after R is installed.

💡 **Why both?**  
- **R** runs your code.  
- **RStudio** gives you a friendly interface, script editor, and tools.

---

## 2️⃣ Learn the RStudio Interface

When you open RStudio, you will see **4 panes**:

| Pane | Location | Purpose |
|------|----------|---------|
| **Source Editor** | Top-Left | Write and edit scripts (`.R` files) |
| **Console** | Bottom-Left | Execute R commands line-by-line |
| **Environment/History** | Top-Right | See variables, datasets, and command history |
| **Files/Plots/Packages/Help/Viewer** | Bottom-Right | Manage files, view plots, install packages, read docs |

💡 **Shortcut:**  
Write code in **Source Editor** → Press `Ctrl + Enter` (Windows) or `Cmd + Enter` (Mac) to run it in the console.

---

## 3️⃣ Variables, Data Types, and Basic Math, Operators
Variables Naming Convension;
```plantext 
→ Start: Letter or . (but not .digit).
→ Allowed: Letters, digits, _, . (no spaces or special chars).
→ Case-sensitive: name ≠ Name.
→ No reserved words (if, TRUE, function, etc.).
→ Best practice: Use snake_case, meaningful names, avoid leading . unless needed.
```
```R
# Legal variable names:
myvar <- "kunal"
myvar <- "kunal"
my_var <- "kunal"
MYVAR <- "kunal"
myvar2 <- "kunal"
.myvar <- "kunal"

# Illegal variable name:
2myvar <- "kunal"
my-var <- "kunal"
my var <- "kunal"
_my_var <- "kunal"
my_v@ar <- "kunal"
TRUE <- "kunal"
```
> Remember that variable names are case-sensitive!
### 🖊 Assigning Variables
```r
x <- 10  # Recommended
y = 5    # Works, but less common
```

### 📂 Data Types in R
```r
a <- 3.14       # Numeric
b <- 10L        # Integer -> 'L' makes this an integer
z <- 1i         # Complex -> (3+5i)
c <- "Hello R"  # Character
d <- TRUE       # Logical (boolean)

class(a)  # Check data type → "numeric"
```
### Type Conversion
- as.numeric()
- as.integer()
- as.complex()

### Escape Sequence
```
\\	Backslash
\n	New Line
\r	Carriage Return
\t	Tab
\b	Backspace
```
### ➗ Basic Math Operations
```r
5 + 3   # Addition → 8
5 - 3   # Subtraction → 2
5 * 3   # Multiplication → 15
5 / 3   # Division → 1.666...
5 %% 3  # Modulus (remainder) → 2
5 ^ 3   # Exponent → 125
```
### Operators
- Arithmetic operators
```
+	Addition
-	Subtraction
*	Multiplication
/	Division		
^	Exponent	
%%	Modulus (Remainder from division)
%/%	Integer Division
```
- Assignment operators
```
x <- 10
x <<- 10
10 -> x
10 ->> x
```
- Comparison operators
```
==	Equal	x == y	
!=	Not equal	x != y	
>	Greater than	x > y	
<	Less than	x < y	
>=	Greater than or equal to	x >= y	
<=	Less than or equal to	x <= y
```
- Logical operators
```
&	Element-wise Logical AND operator. Returns TRUE if both elements are TRUE
&&	Logical AND operator - Returns TRUE if both statements are TRUE
|	Elementwise- Logical OR operator. Returns TRUE if one of the statements is TRUE
||	Logical OR operator. Returns TRUE if one of the statements is TRUE
!	Logical NOT - Returns FALSE if statement is TRUE
```
- Miscellaneous operators
```
:	Creates a series of numbers in a sequence	x <- 1:10
%in%	Find out if an element belongs to a vector	x %in% y
%*%	Matrix Multiplication	x <- Matrix1 %*% Matrix2
```

---

## 4️⃣ Conditioinals, Loops, Functions and getting help in R

### Conditionals
Conditionals follow the syntax: if-else, if-else-if
```r
if(exp)
{
   #body
}else
{
   #body
}
```
### 📌 Using Functions
Functions follow the syntax:
```r
function_name(arguments)
```
Examples:
```r
sqrt(16)          # 4
round(3.14159, 2) # 3.14
```

### ❓ Getting Help
```r
?mean       # View help for the 'mean' function
help(mean)  # Same as above
??"linear regression"  # Search related functions
example(mean)  # See examples for mean()
```

💡 **Pro Tip:** Use **Tab** after typing part of a function name for auto-complete in RStudio.

---

## 📝 Mini Exercises

1. Assign the value `42` to a variable named `life` and check its class.
2. Create two variables, `a` and `b`, with values `8` and `3`. Find:
   - Their sum
   - Their difference
   - The remainder when `a` is divided by `b`
3. Use the `sqrt()` function to find the square root of `81`.
4. Use `?round` to read about the `round()` function and round `3.141592` to 4 decimal places.

---

✅ **End of Day 1 Goal:**  
By now, you should be able to:
- Install R & RStudio
- Navigate RStudio
- Create variables and identify data types
- Perform basic math
- Use functions and find help in R

---

**Next Step:** [Day 2 – Vectors & Data Structures](Day2_Vectors_Data_Structures.md)
