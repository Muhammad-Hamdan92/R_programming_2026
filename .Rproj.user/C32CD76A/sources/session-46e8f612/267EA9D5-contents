## in control structure the next is loops, for iteration
# for loop, while loop, repeat loop, [next, break is used inside these loops structure]

## for loop: for() -----
#[for loop is most widely used in R than other loops, e.g in central limit theorem]
#[following are the way to write for loop]

## way_1
for(i in 1:20){
  print(i)    ## repeat 20 times print function
}
## also used ......
m <- 25
sum <- vector(length = m)  ## create empty vector of length m

for(i in 1:m){
  sum[i] <- sum(i)  ## store in sum vector
}

sum
## way_2 by seq_along....iterate the loop function according to the no. of elements in vector/column

vec_int <- c(1,2,3,4,5,6,7,8,9)

for(i in seq_along(vec_int)){
  print(vec_int[i])
}

## third_way is.............

for (number in vec_int) {
  print(number)      ## print number in vec_int
}

## basic nested loop..
mat <- matrix(1:20, nrow = 5)  ## create 5 by 4 matrix
mat

for (i in seq_len(nrow(mat))) {            ## iterate along number of rows
  for (j in seq_len(ncol(mat))) {         ## iterate along number of columns
    print(mat[i, j])     ## print both 
  }
}


df <- data.frame(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)
df

output <- vector("double", ncol(df))  # 1. output
for (i in seq_along(df)) {            
  output[[i]] <- median(df[[i]])      
}
output

## practice(Q-1) .....................compute the means of every columns of mtcars..................
###### install.packages("dslabs", dependencies = TRUE)
library(dslabs)
data("mtcars")
View(mtcars)
## compute the means of every columns of mtcars
col_means <- vector("double", length = ncol(mtcars))  ## create empty vector for store the result
names(col_means) <- colnames(mtcars)   ## assign the names to empty columns
for (i in seq_len(ncol(mtcars))) {
  col_means[i] <- mean(mtcars[[i]])
}

print(col_means)


## practice Q-1............he number of unique values in each column of iris..............

data("iris")
number_unique_col <- vector("double", length = ncol(iris))
names(number_unique_col) <- colnames(iris)

for (i in seq_len(ncol(iris))) {
  number_unique_col[i] <- length(unique(iris[[i]])) 
}
print(number_unique_col)



## while loop: while(condition){execution}------
#[iterate the loop until the condition will true]
i <- 1
while (i <= 9) {
  print(i)
  i <- i+1   ## add
}
library(purrr)
map(iris, class)


# with logical loop
passengers <- data.frame(
  name     = c("Sara", "Bilal", "Hassan"),
  sex      = c("female", "male", "male"),
  pclass   = c(3, 2, 1),
  survived = c(0, 1, 0)
)

for (i in 1:nrow(passengers)) {
  
  name <- passengers$name[i]
  sex  <- passengers$sex[i]
  surv <- passengers$survived[i]
  
  if (sex == "female") {
    if (surv == 1) {
      cat(name, " Female survivor\n")   ###For cleaner output, add "\n" (newline):
    } else {
      cat(name, "Female, did not survive\n")  #cat() means concatenate and print
    }
  } else {
    cat(name, " Male, passenger\n")
  }
}

#=======real case study by using titanic data=======
data("Titanic"); class(Titanic)
df_titanic <- as.data.frame(Titanic) #covert the table into data frame
View(df_titanic)

attributes(df_titanic)

df_titanic$risk_group <- ifelse(
  df_titanic$Class == "1st", 
  "Low Risk", 
  "Higher Risk"
)

df_titanic$class<- ifelse(
  df_titanic$Sex == "Female" & df_titanic$Age == "Child",
  "class_1— Woman & Child",
  ifelse(
    df_titanic$Sex == "Female",
    "class_2 — Woman",
    ifelse(
      df_titanic$Age == "Child",
      "class_3 — Child",
      "class_4 — Adult Male"
    )
  )
)

table(df_titanic$class)


#(2)-------------Loops-------------
# first loop is [while loop]  ###A for loop repeats a syntax/code for each elemet in a pattern.

i <- 1
# Basic: count up to 5
while (i <= 5) {
  cat("i =", i, "\n")
  i <- i + 1   # MUST update i or loop runs forever!
}
#Titanic example — keep scanning passengers until we find the first female survivor:

# Load data first
url <- "https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv"
titanic <- read.csv(url)
class(titanic)
colSums(is.na(titanic))
# Search using while loop
i <- 1

while (i <= nrow(titanic)) {
  
  if (titanic$Sex[i] == "female" && titanic$Survived[i] == 1) {
    cat("First female survivor found at row", i, "\n")
    cat("Name:", titanic$Name[i], "\n")
    cat("Age :", titanic$Age[i],  "\n")
    i <- nrow(titanic) + 1  # force loop to end
  } else {
    i <- i + 1
  }
}


