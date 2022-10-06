a = "mobile"
a = "pen"
a = "makeup"
------------
num1 = 3
char1 = "hello"
log1 = TRUE
complex1 = 4+7i
--------------
#assignment operator
b = 1
b<-1
1 -> b
--------------
#arithmetic operators
  
num1=10
num2=20

num1+num2
num1-num2
num1*num2
num1/num2
---------------
#rational operators

num1<num2
num1>num2
num1==num2
num1!=num2
--------------
#logical operators
  
log1=TRUE
log2=FALSE

log1&log1
log1&log2
log2&log2

log1 | log1
log1 | log2
log2 | log2
-------------
# vector
vec1 <- c(1,2,3)
vec2 <- c("a","b","c")
vec3 <- c(T,F,T)

mixbag1 <- c(1,T,2,F)
mixbag2 <- c(1,"a",2,"b")
mixbag3 <- c(1,"a",T)
----------------------
# Extracting elements from vector
  
mixbag2[1]
mixbag2[2]
mixbag2[1:3]
------------------
#list

l1 <- list(1,"a",TRUE)

class(l1[[1]])
class(l1[[2]])
class(l1[[3]])

l2 <- list(c(1,2,3), c("a","b","c"), c(T,F,T))
l2 [[2]] [2]
l2 [[1]] [3]
----------------
# matrix

m1 <- matrix(c(1,2,3,4,5,6))
m2 <- matrix(c(1,2,3,4,5,6),nrow = 2, ncol = 3)
m3 <- matrix(c(1,2,3,4,5,6),nrow = 2, ncol = 3, byrow = T)

m1[2,2]

----------------
#array

vec1 <- c(1,2,3,4,5,6)
vec2 <- c(7,8,9,10,11,12)

a1 <- array(c(vec1,vec2), dim = c(2,3,2))

a1 [1,2,1]
------------------
#factor
color1 <-c("blue","green","yellow")
as.factor(color1) -> color1
----------------------------------
#dataframe
  
data.frame(fruit_name=c("Apple", "Banana", "Guava"), fruit_cost=c(10, 20, 30 )) ->fruits

fruits$fruit_name
fruits$fruit_cost
---------------------------------
#Inbuiltfunctions
View(iris)
str(iris)
head(iris)
tail(iris)
table(iris$Species)

min(iris$Sepal.Length)
max(iris$Sepal.Length)
mean(iris$Sepal.Length)
range(iris$Sepal.Length)
-------------------------
#if

if(iris$Sepal.Length[1]>4){
  print("sepal Length is greater than 4")
}

if(iris$Sepal.Length[1]<4){
  print("sepal Length is greater than 4")
}
------------------------------------------
#if..else
  
if(iris$Sepal.Length[1]<4){
    print("sepal Length is less than 4")
}else{
  print("sepal Length is greater than 4")
}




  
  









  
  

