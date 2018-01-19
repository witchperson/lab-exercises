## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# "sum()" only works with numbers and initials is letters

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# "library()" hasn't been used on the stringr package

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# `initial`` is not a variable stored in the environment


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c("dogs", "cats", "ferrets???"))  # "character"

typeof(c(1, 4, 6))  # "double"

typeof(c(1, "dogs"))  # "character"

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff.string <- paste('The difference in lengths is', diff)
  return(diff.string)
}  

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), 1:100)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    sentence <- paste('Your first vector is longer by', diff, 'elements')
  } else {
    sentence <- paste('Your second vector is longer by', -diff, 'elements')
  }
  return(sentence)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:15, 9:17)


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  return(c(v1, v2, v3))
}

# Send 3 vectors to your function to test it.
CombineVectors(c("Birds ", "of ", "a "), c("feather "), c("flock ", "together"))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

CapsTime <- function(courses) {
  return(gsub("[A-Z]","", courses))
}

CapsTime(c("Informatics", "Bioethics", "Artifical Intelligence"))
