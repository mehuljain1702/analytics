# vector
#have only one kind of data - numeric, character , logical or integer
# c() -- c means concatenation

#numeric
x = c(2,3,4)
x
class(x)

#character
y= c('a', 'b', 'c')
y

#logical 
z= c(TRUE, FALSE, TRUE, FALSE)
z

#inetgers
a= c(1L, 2L, 3L)
a

class(a)
length(a)
typeof(a)
str(a)

#adding elements to vector
y = c(y, 'd')
y


#Vectors from a sequence of numbers
series=1:10
series
seq(10)
seq(1,10,1.5)
seq(0,100,10)
.

#missing value in vector
#is.na
#anyNA

u= c('a', 'b', NA, 'd', NA)
is.na(u)
anyNA(u)


#slicing vector
#we can select one or many elements from a vector by using the square bracket[]

u[5]

#lenght = lenght of the vector
m= (20:50)
length(m)


m[c(17,15,29)]   #shows exact value
m[9:14]    #shows number from 9 to 14

