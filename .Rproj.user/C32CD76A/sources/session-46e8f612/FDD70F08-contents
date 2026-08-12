co_data <- data(CO2)

## view the data
View(iris)
View(CO2)

## structure of data
str(iris)

## summary of data
summary(iris)

## dimension of data
dim(iris)

## no. of rows and columns
nrow(iris)

###no. of columns
ncol(iris)

##names of columns and rows
row.names(iris)
colnames(iris)

##head of data
head(iris, 10)

## tail of data
tail(iris, 8)

##levels of factor variables in data
levels(iris$Species)

nlevels(iris$Species)  ## give total number of factor


#### apply family-----

## sapply used to check the str,summary or class of dataframe
sapply(iris, class)
sapply(iris, str)  # first argument is data and second is function which you apply
sapply(iris, levels)

##class(iris$Species) instead of checking the one by one used apply function, which is same as for loop

##


## checking the missing value----
is.na(iris)
sum(is.na(titanic))
sum(is.na(iris))
##load the co2 dataset
data("CO2")
sum(is.na(CO2))

data("airquality")

colSums(is.na(titanic_1)) # show the missing value in each columns

##creating the data frame
df <- data.frame(name = c('Ali', "Hamdan", "Bashir", NA),
                 age = c(23, 45, NA, 20),
                 height = c(NA, 5.3, 6, NA))
df
sum(is.na(df))
colSums(is.na(df))

#df <- na.omit(df)  ## remove all rows in NA is present
complete.cases(df)  ### keeps the rows having NA
df
###find duplicates value
sum(duplicated(iris))
sum(duplicated(airquality))


## subsetting the dataset 
df_subset <- subset(iris, iris$Species=="setosa")
df_subset

### sorted the data 
sort(iris$Specie)

min(iris$Sepal.Length)
max(iris$Sepal.Length)
which.max(iris$Sepal.Length)
which.min(iris$Sepal.Length)

### ordered the dataset 
iris[order(iris$Sepal.Length, decreasing = TRUE),]


## basic statistical commands 
mean(iris$Sepal.Width, na.rm = TRUE)
mean(titanic$Age, na.rm = TRUE)

sd(iris$Sepal.Width, na.rm = TRUE)     

median(iris$Sepal.Width, na.rm = TRUE)

### categorical data
table(iris$Species)

###quantiles
quantile(iris$Sepal.Length)
IQR(iris$Sepal.Length)

### checking the lenght of columns and rows
length(iris)
length(iris$Sepal.Length)
length(unique(iris$Species))
length(unique(iris$Sepal.Length))

###proportiona

prop.table(table(iris$Species))


### correlation
cor(iris$Sepal.Length, iris$Petal.Length)

### basic ploting------
hist(iris$Sepal.Width)

boxplot(iris$Petal.Length) 
hist(iris$Petal.Length)


plot(iris)

