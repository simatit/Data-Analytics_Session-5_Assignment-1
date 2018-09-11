# 1. How many vowels are there in the names of USA States?
USArrests

States <- tolower(rownames(USArrests))
States
states_lower <- strsplit(States, "")
states_lower
vowels = c("a", "e", "i", "o", "u")
a <- 0
e <- 0
i <- 0
o <- 0
u <- 0
for (i in seq(1:50)) {
  for (j in states_lower[i]) {
    for (k in 1:length(j)) {
      if(j[k] == vowels[1]){
        a <- a+1
      }
      if(j[k] == vowels[2]){
        e <- e+1
      }
      if(j[k] == vowels[3]){
        i <- i+1
      }
      if(j[k] == vowels[4]){
        o <- o+1
      }
      if(j[k] == vowels[5]){
        u <- u+1
      }
      
    }
    
  }
}
a
e
i
o
u

result <- c(a,e,i,o,u)
result


# 2.	Visualize the vowels distribution.
result <- c(a,e,i,o,u)
vowels_factor <- as.factor(vowels)
barplot(result, main = "Vowel Distribution", horiz = FALSE, names.arg = c("A", "E", "I", "O", "U"))


