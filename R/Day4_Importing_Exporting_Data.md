# Day 4 – Importing & Exporting Data in R

## 1. Introduction
Data rarely comes preloaded in R. Most of the time, we import it from files like CSV, TXT, or Excel, work with it, and then export the results.

---

## 2. Reading CSV Files
**Syntax:**
```R
data <- read.csv("file.csv")
```

**Example:**
```R
students <- read.csv("students.csv")
head(students)
```

**Key Parameters:**
- `header = TRUE` → first row contains column names
- `sep = ","` → defines the separator
- `stringsAsFactors = FALSE` → prevents automatic conversion to factors

```R
data <- read.csv("file.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
```

---

## 3. Reading TXT Files
**Syntax:**
```R
data <- read.table("file.txt", header = TRUE, sep = "\t")
```

**Example:**
```R
students_txt <- read.table("students.txt", header = TRUE, sep = "\t")
```

---

## 4. Reading Excel Files
To read Excel files, install and load the **readxl** package:
```R
install.packages("readxl")
library(readxl)

data <- read_excel("file.xlsx")
```

**Reading a specific sheet:**
```R
data <- read_excel("file.xlsx", sheet = "Sheet1")
```

---

## 5. Viewing Data
```R
head(data)       # First 6 rows
tail(data)       # Last 6 rows
View(data)       # Spreadsheet view in RStudio
str(data)        # Structure of the dataset
summary(data)    # Summary statistics
```

---

## 6. Exporting Data to CSV
```R
write.csv(data, "output.csv", row.names = FALSE)
```

---

## 7. Exporting Data to TXT
```R
write.table(data, "output.txt", sep = "\t", row.names = FALSE)
```

---

## 8. Exporting Data to Excel
Requires the **writexl** package:
```R
install.packages("writexl")
library(writexl)

write_xlsx(data, "output.xlsx")
```

---

## 9. Mini Exercises
1. Read a CSV file and display the first 5 rows.
2. Read a TXT file with tab separators.
3. Read an Excel file and display summary statistics.
4. Export a data frame to CSV and Excel formats.
5. Load a dataset, modify a column, and export it back.

---
**End of Day 4 – Importing & Exporting Data**
