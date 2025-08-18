# -----------Statistics----------

## Data set
# is a collection of data, often presented in a table.
# buit-in -> mtcars(Motor Trend Car Road Tests)

# print the mtcars data set
mtcars

# use the question mark to get info about dataset;
?mtcars

## Get Information
Data_Cars <- mtcars

dim(Data_Cars)

names(Data_Cars)

rownames(Data_Cars)

# print var values
Data_Cars$mpg

sort(Data_Cars$cyl)

summary(Data_Cars)


## Max and Min
max(Data_Cars$mpg)
min(Data_Cars$mpg)

# return the index of min and max;
which.max(Data_Cars$hp)
which.min(Data_Cars$hp)

# to get the name of that cars;
rownames(Data_Cars)[which.min(Data_Cars$hp)]
rownames(Data_Cars)[which.max(Data_Cars$hp)]


## Median;
median(Data_Cars$hp)

## Mode;
names(sort(-table(Data_Cars$wt)))[1]


## Percentiles
# Percentiles are used in statistics to give you a number that describes 
# the value that a given percent of the values are lower than.

Data_Cars <- mtcars

# c() specifies which percentile you want
quantile(Data_Cars$wt, c(0.75))

quantile(Data_Cars$wt)