# ------------------- plot() -------------------
# function is used to draw points (markers) in a diagram.

#    x, y
plot(2, 4)

plot(c(1, 8), c(3, 10))

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))
# better to use var;
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 11)
plot(x, y)

## Sequences of Points
plot(1:10)

## Draw a line-> type="l"
plot(1:10, type='l')

plot(c(1, 3), c(8, 9), type='l')

## Plot Labels-> main="", xlab="", ylab=""
plot(1:10, main="My Practice", xlab="x-axis", ylab="y-axis", type="l")


## Graph Appearance-> col="color"
plot(1:10, col="violet")

## size-> cex=number; 1 is default, while 0.5=>50% smaller| 2=>100%large;
plot(1:10, cex=0.5)
plot(1:10, cex=1.2)

## Point Shape-> pch=> 0 to 25 
plot(1:10, pch=25, cex=2)
plot(1:10, pch=0, cex=2)

i <- 0
while (i <= 25) {
  
  plot(1: 10, pch=i, cex=2, main=paste("My Graphs pch=", i), xlab="x-axis", ylab="y-axis", col="red")
  i <- i + 1
}


# ------------------- Line -------------------
# A line graph has a line that connects all points in a diagram.
# plot(type="l") 

plot(1:10, type="l")

## Line color
plot(1:10, type="l", col="red")

## Line width -> lwd; default 1; 0.5 means 50% smaller; 2 means 100% larger;
plot(1:10, type="l", col="blue", lwd=2)

## Line styles -> tly; by default solid; 0-6;
plot(1:10, type="l", lwd=5, lty=3)

## Multiple lines
line1 <- c(1, 2, 3, 4, 5, 10)
line2 <- c(2, 5, 7, 8, 9, 10)
plot(line1, type="l", col="blue")
lines(line2, type="l", col="red")


# ------------------- Scatter Plot -------------------
# is a type of plot used to display the relationship b/w two numerical var, plot one dot for each
# need same length of vectors

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")

## Compare plots -> points() func;

# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age",
     ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)


# ------------------- Pie Charts -------------------
# A pie chart is a circular graphical view of data.
# pie()

x <- c(10, 20, 30, 40)
pie(x)

## start angle
x <- c(10, 20, 30, 40)
pie(x, init.angle = 90)

## Labels and Header
x <- c(10, 20, 30, 40)
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")
pie(x, label=mylabel, main="Fruits")

## color
colors <- c("red", "yellow", "green", "black")
pie(x, label = mylabel, main = "Fruits", col = colors)

## Legend;
legend("bottomright", mylabel, fill=colors)


# ------------------- Bar charts -------------------
# A bar chart uses rectangular bars to visualize data.
# barplot()

x <- c("A", "B", "C", "D")
y <- c(2, 4, 5, 9)
barplot(y, names.arg=x)
        
## color
barplot(y, names.arg = x, col = "red",)

## Density / Bar Texture;
barplot(y, names.arg = x, col="green", density = 10)

## Bar width;
barplot(y, names.arg = x, width = c(1,2,3,4))

## Horizontal Bars;
barplot(y, names.arg = x, horiz = TRUE)


















