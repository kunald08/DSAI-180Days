# Data Structures in R
# is used to store and organize data.
# built-in data structures in R-
# Vectors, Lists, Matrices, Arrays, Data Frames

# ---------------------Vectors:---------------------
# list of items that are same types

# Vector of strings
fruits <- c("apple", "banana", "cherry", "orange")
fruits


# Vectors of numerical values
numbers <- c(1, 2, 3, 4, 5, 6, 7, 19)
numbers


# Vectors of numerical values in a sequence
numbers <- 1:10
numbers

# Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
numbers1

# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
numbers2

# Vector of logical values
log_values = c(FALSE, TRUE, TRUE, FALSE, TRUE)
log_values


## Vector Length
length(fruits)
length(log_values)


## Sort a Vector
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(1, 2, 7, 3, 2, 1, 5, 37, 2, 7, 2)

sort(fruits)
sort(numbers)


## Access Vectors
fruits[1]
fruits[c(2, 4)] # can use c() with diff index position to access multiple

# Access all items except for the first item
fruits[c(-1)]

## Change "banana" to "pear"
fruits[1] <- "pear"

# Print fruits
fruits


## Repeat Vectors
# Repeat each value:
repeat_each <- rep(c(1, 2, 3), each=3)
repeat_each

# Repeat the sequence of the vector:
repeat_times <- rep(c(1, 2, 3), times=2)
repeat_times

# Repeat each value independently:
repeat_indepent <- rep(c(1, 2), times= c(5, 9))
repeat_indepent


## Sequenced Vectors
number <- 1: 10
number

n <- seq(from=0 , to= 1000, by=40)
n


# ---------------------Lists;---------------------
# can store different types of data

# List of strings
thislist <- list("apple", "banana", "cherry")
thislist

## Access lists
l <- list("apple", "banana", "cherry")
l

## change item value
l[1] <- "blackcurrant"
l

## list length
length(l)

## Check if "apple" is present in the list:
ll <- list("apple", "orange", "banana", "lemon")
"apple" %in% ll

append(ll, "cherry")

append(ll, "papaya", after=3)

newList <- ll[-2]
newList


# return second, third, fourth and fifth item;
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

(thislist)[2:5]

for (x in thislist){
  print(x, quote=FALSE)
}

## join two list
list1 <- list('a', 'b', 'c')
list2 <- list(1, 2, 3)
list3 <- c(list1, list2)
list3


# ---------------------Matrices;---------------------
# matrice is a 2d data set with columns and rows.
# column --- vertical data
# row --- horizontal data

# create a matrix
thismatrix <- matrix(c(1, 3, 4, 5, 6, 7), nrow=3, ncol=2)
thismatrix

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix

## Access matrix items
thismatrix[1,2]
thismatrix[2,]
thismatrix[,2]

## accessing more than one row
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix[c(1,2),]

thismatrix[,c(1,2)]


## Add rows and columns: cbind() to add additional columns
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
# Print the new matrix
newmatrix

# rbind(): to add additional row


## remove rows and columns
thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]
thismatrix

"apple" %in% thismatrix   # to check


dim(thismatrix)   #to find #of rows and columns

## Traversal 
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (col in 1:ncol(thismatrix)) {
    print(thismatrix[rows, col])
  }
}



# --------------------- Arrays; ---------------------
# arrays are same as matrix but it can be more than 2d

thisarray <- c(1:24)
thisarray

# an array can have more than one dimension 
multarray <- array(thisarray, dim=c(4, 3, 2))
multarray

multarray[2, 3, 2]   # array[row pos, col pos, matrix level]

# --------------------- Data Frames; ---------------------
# Data Frames are data displayed in a format as a table

# create a data frame
Data_Frame <- data.frame(
  id = c(50, 51, 52, 53),
  name = c('kunal', 'lokendra', 'nikita', 'nandini'),
  age = c(21, 22, 29, 21)
)

summary(Data_Frame)
Data_Frame$name    #accessing items
Data_Frame[2]
Data_Frame[["name"]]