## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
?sum
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# Vector contains the different values as elements; one is integer, and another is String.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# That's Because it doesn't import the library. It just install the library

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# there's no variable called initial.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
v1 <- c()
typeof(v1)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function (v1, v2) {
  return (paste("The difference in lengths is", length(v1)-length(v2)))
}

# Pass two vectors of different length to your `CompareLength` function
vec1 <- 1:6
vec2 <- 2:9
CompareLength(vec1,vec2)
# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function (v1, v2) {
  if(length(v1)-length(v2) > 0) {
    return (paste("Your first vector is longer by ", length(v1)-length(v2), "elements"))  
  } else if(length(v1)-length(v2) < 0)  {
    return (paste("Your second vector is longer by", length(v2)-length(v1), "elements"))
  } else {
    return ("Your vectors have same amounts of elements")
  }
  
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vec1, vec2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function (v1, v2, v3) {
  return (c(v1, v2, v3))
}
# Send 3 vectors to your function to test it.
vec3 <- 3:100
CombineVectors(vec1, vec2, vec3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function (names) {
  return (gsub("^[A-Z]","", names))
}

courses <- c("Informatics 201", "CSE 373", "Music 131")
CapsTime(courses)
