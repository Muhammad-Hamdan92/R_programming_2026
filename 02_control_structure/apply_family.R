#apply family is used to apply the function on list, matirx, vector or dataframe with in one line
#work same as for loop in R. Their are folowing apply family members

#(1)lapply(X, FUN), always apply on vector/list and giving answer in list
vec_num <- c(1,2,3,4,6)
lapply(vec_num, class)

my_list <- list(1:27, 3:40, 12:30)
lapply(my_list, mean)

#(2)sapply(X, FUN), same as lapply() but give answer in vector if possible
sapply(vec_num, class)
sapply(my_list, mean)   ## giving answer in list

#but here is the problem that sapply does not show the error, it implicitly guesing and
#do it. For example

list_2 <- list(1, 2, "Ali", 4)
sapply(list_2, class)
#or
sapply(list_2, function(x) x*2)

#(3)vapply
vapply(1:5, function(x) sqrt(x), FUN.VALUE = numeric(1))
sapply(1:5, function(x) sqrt(x))
vapply(1:5, function(x) sqrt(x), FUN.VALUE = numeric(1))
