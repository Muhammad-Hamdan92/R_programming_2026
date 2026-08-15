x <- 4
## data types in R
#1) vector, list, data frame , matrix

## vector----
#categorical

vec_chr <- c('b', 'c','d', 'f')  ## c() used to store multiple elements
vec_chr
class(vec_chr)    # check for data types
unclass(vec_chr)  ## show the elements in the column

print(vec_chr)


#logical
vec_log <- c(T, F)
vec_log
class(vec_log)

#numeric

vec_num <- c(1,2 ,3,4,4,5,4.5) 
class(vec_num)
unclass(vec_num)


## integer
vec_int <- c(1L,2L,3L,4L)
vec_int

vec_int <- 1:200
vec_int
class(vec_int)

###type casting/coercion [implicit,explicit]

##imlicit coercion  logical, int , num , char

vec_chr_coer <- c(1,2,'b','c')
class(vec_chr_coer)
unclass(vec_chr_coer)


age <- c('19',"30", '28')
class(age)
age <- as.numeric(age)
class(age)

as.double(age)
is.numeric(vec_chr)

## list 

list_1 <- list(1, 2L, 'b', T)
class(list_1)
print(list_1)

list_2 <- list(name = c('Ali','Bilal','Zoya'),age = c(13, 27, 20), weight = c(40,38,60))
list_2


# factor
fac <- factor(c(TRUE, FALSE,TRUE,FALSE,TRUE,TRUE))
class(fac)
levels(fac)
nlevels(fac)
table(fac)
prop.table(table(fac))*100

## 


##  2 Dimensional arrays/ data types----
#matrix, # dataframe

##matrix

mat <- matrix(1:20, nrow = 5, ncol = 4)  ## filled by columns
mat

mat_by_rows <- matrix(1:20 , byrow = TRUE, nrow = 5) # byrow: is used to fill elements in rows
mat_by_rows

##name rows and columns
row.names(mat_by_rows) <- c("a","b", "c","d","e")
mat_by_rows
###colnames()

dimnames(mat) <- list(c("a","b", "c","d","e"),c("A","B","C","D"))
mmatrix(
  , nrow = rows, ncol = cols)




class(mat)


###data frame

df <- data.frame(name = c('Ali','Bilal','Zoya'),
                 age = c(13, 27, 20), 
                 weight = c(40,38,60)
                 )
df
class(df)
