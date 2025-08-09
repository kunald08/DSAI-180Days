# comments in R using #

print("Hare krishna!")

# R -> programming language
# Why -> great resource for data analysis, visualization, ds and ML
#     -> open source/large community support/many packages

# unlike many PL, in R we can o/p code without using print func
"Hey There! I am Kunal"


# Variables in R: container for storing data values

name <- "kunal"
age <- 20

name
age 

# for loop with print()
for (x in 1:10)
{
  print(x)
}

# concatenate element; using paste() func
greet <- "Hola"
paste(text, "kunal")

name <- "Nikita"
paste(greet, name)


# mathematical operators;
num1 <- 5
num2 <- 90

num1 + num2

# text + num --> error


# Multiple variables
val1 <- val2 <- val3 <- "Orange"
# print variables value
val3
val2
val1


# Data Types;

# numeric
x <- 10.5
class(x)

# integer
x <- 1000L
class(x)

# complex
x <- 9i + 3
class(x)

# character/string
x <- "R is exciting"
class(x)

# logical/boolean
x <- TRUE
class(x)


# Types Conversion
x <- 1L #integer
y <- 2 #numeric

# convert from integer to numeric;
a <- as.numeric(x)

# convert from numeric to integer;
b <- as.integer(y)

x
y

class(a)
class(b)


# Built-in Math Functions
max(10, 30, 2)
min(2, 4, 89)
sqrt(16)
abs(-4.7)
ceiling(1.4)  # upwards->its nearest int
floor(1.4)    # downwards->its nearest int


# String Literals
"hello"
'hello'

s <- "hello"
s

# Multi-line strings
str <- "Hey There!
My name is Kunal.
Based in India
& Currently learning R."
str
cat(str) #want d line breaks
nchar("kunal") #no of char

# grepl() func to check if char or sequence of char r present in string;
s <- "Hello World"
grepl("H", s)
grepl("Hello", s)
grepl("X", s)

# combine two strings
str1 <- "Hello"
str2 <- "World"
paste(str1, str2)

# Escape Sequence;
str <- "I am so-called \"Engineer\", from 127.0.0.1"
str
cat(str)


#Conditionals
a <- 129
b <- 33
if (a < b){
  print("b is greater than a")
}else {
  print("b is not greater than a")
}


# Loops - while/for
# break -> break the current scop
# next -> skip 

i <- 1
while (i<6){
  print(i)
  i <- i+1
}
# Print "Yahtzee!" If the dice number is 6:
dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}

# for loop is used for iterating over a sequence;
for(x in 1:10){
  print(x)
}


# functions; block of code
my_function <- function(){
  
  print("hare krishna!")
}
my_function() #call 


family_guy <- function(fname) { #parameter
  paste(fname, "Griffin")
}

family_guy("Stewie")  #args
family_guy("Peter")
family_guy("Lois")
family_guy("Meg")
family_guy("Brian")
family_guy("Chris")

my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter", "Griffin")

#default value
my_func <- function(country="India"){
  paste("I am from", country)
}

my_func() # will get default value
my_func("Australia")
my_func("Nepal")
my_func("China")


# returns value
square_func <- function(x)
{
  return (x ^2)
}
square_func(3)

######################################################################
#1)
life <- 42
class(life)

#2)
a <- 8
b <- 3

a+b
a-b
a%%b

#3)
sqrt(81)

#4)
?round
round(3.141592, digits = 4)




