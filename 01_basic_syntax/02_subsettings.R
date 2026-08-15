### subsettings
# [], [[]], [c()], $

list_2 <- list(name = c('Ali','Bilal','Zoya'),age = c(13, 27, 20), weight = c(40,38,60))
list_2

list_1 <- list(1, 2L, 'b', T)

#[]
class(list_1[1])  ## show list with elements

#[[]]
list_1[[1]]   ## give only elements

##vector
vec_num <- c(1,2,3,4)
vec_num[2]
vec_chr <- c("a","b","c","c","d","a")
vec_chr[1]    ##single element
vec_chr[c(1,3,4)]   ##for multiple elements
vec_chr[1:4]
vec_chr[vec_chr > "a"] ###logical subsetting

mat <- matrix(1:20, nrow = 5)
###mat[,4, drop = TRUE]  check it by yourself, return ans in matrix

## [$]  access the elements
list_2$name
list_2$n   ## also accessing by only write first letter
