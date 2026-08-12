## conditions in R are:
# condition is one of the most important part of control flow structure in programming which 
# allow you to respond the features of data and express the expression explicitly.


#1) if and else condition-----
### without esle:
#   [print, if the condition is true otherwise nothing will execute]
x <- 4
if (x < 5){       ## giving condition
  print("TRUE")   ### do something
}


##if the we want to check condition for a vector > 1 length than 
#       used all(), or any() function, otherwise give you error

vec_int <- 1:20

#if (vec_int > 20){  print("TRUE")} # give error
all(vec_int > 12) ## true if all elements match condition
any(vec_int > 12) ## true if at least one match.....


if (any(vec_int > 12)){
  print("TRUE")
}

###w with else
#[if condition true than execute first otherwise second due to else]

if (x > 5){
  print("greater")  #3 if true
} else{
  print("may be smaller")  # when condition is false
}





#2) else if condition-----
#[ is used for series of conditions inside "if()" condition]

temp_reading <- 37

## execute the relative argu... where the condition is true.

if (any(temp_reading < 25) ){
  print("room temoerature")
} else if (any(temp_reading <= 37)){
  print("body temperatue")
} else if (any(temp_reading == 100)){
  print("boiling temperature")
} else {
  print("missing value of temperature")
}

#3) ifelse() for vectoried condition-----

temperature <- c(37, 25, 55)

wether <- ifelse(temperature > 37, "HOT Day", "Normal") # [condition, true_value, false_value]
print(wether)




#4) Make examples for practice by using relational operators----

df <- data.frame(name = c("Ali", "Bilal", "Zoya"),
                 gender = c("Male", "Male", "Female"),
                 age = c(20, 25, 23),
                 present = c(TRUE, FALSE, TRUE))

if (any(df$name=="Ali" & df$age == 20 & df$gender == "Male")){
  print("correct input of data")
}


if (any(df$name=="Ali" & df$age == 20 & df$present == FALSE)){
  print("Ali is present")
} else{
  print("Ali is absent")
}

## do next by yourself