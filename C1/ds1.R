#Data Structures

#Vectors----
v1 = c('A', 'B','C')   #create a vector
v1   #print the vector
class(v1)  #print the class of vector
(v2 = c(1,2,3)) #ROUND BRACKET CREATE AND PRINT
v2
class(v2)
(v3 = c(TRUE, FALSE, TRUE))
class(v3)
V3a <- c(T,F,T) #TRUE - T, FALSE-F
(v4 = 100:200) #print result
length(v4)  #no of items in vector
v4
v5 = seq(1,10,2)
v4; v5  #two commands seperated by semicolon
v4
v4[-c(1,3,4,30:40)] #excluded 1,3,4
v4[v4 > 150] #list only values > 150
v7 = c('A','C')
v1
v1[!v1 %in% v7]  # find values in vector v1 but not in v7
v1
v1['A']  #wrong/ error
v1[1]  # extract by position
v1
v8 = 1:10
v8
names(v8)
LETTERS[1:10]
names(v8)
month.abb[1:10]
month.abb[12:1]

(taxila = 100:105)
names(taxila)
taxila[c('satya','sakshi','zayn')]
LETTERS[1:26]
sample(LETTERS[1:26])
LETTERS[1:40]
sample(LETTERS[1:40])
gender = c('M','F')
sample(x=gender)
sample(x=gender, size = 100, replace = T)
x
x=sample(x=gender, size = 100, replace = T)
table(x)
x2=sample(x=gender, size = 100, replace = T, prob = c(.4,.6))
table(x2)

grad = c('BBA','B.TECH')
y=sample(x=grad, size = 1000, replace = T, prob = c(.6,.4))
y
table(y)


v8  #see headings
v8['B']  #filter by columnname
v8[c('B','F')]
v8[2:8] #by p:sition also

str(v8)
str(v1)
class(v8)
class(v1)

#Matrix ----------------------------------------
#2 dim, rows and columns, single datatype ie number, character

1:24  #seq of values
(matrix1 = matrix(1:24, ncol=6, byrow=T))
length(1:24)
matrix1[,1]  #first columns
matrix1[2:4,3:4]  #2 to 4th rows, 3 to 4 column row first then column
matrix1[2,3]  #particular position matrix1
length(15:75)
(matrix2=matrix(16:75, ncol = 5, byrow = T))





# fill the values byrow not bycol
(matrix2 = matrix(1:24,ncol=4, byrow=TRUE))


#give names to columns and rows
rn = paste('R',1:6, sep='-')
cn = paste('C',1:4, sep='-')
dimnames(matrix2) = list(c(rn), c(cn))
matrix2
matrix2['R-1',]
matrix2[,'C-1']

matrix1
dimnames(matrix1) = list(c(paste('R',1:4, sep='_')), c(paste('C',1:6,sep='')))
matrix1

#summary on Matrixes
matrix1
colSums(matrix1,)

colSums(matrix1[,c(1,3)])

rowSums(matrix1)
rowMeans(matrix1)
colMeans(matrix1)
colSums

#Dataframe----
#rollno, name, course, dept

rollno=c(101,102,103,104)
name=c('Rohit','Lalit', 'Hitesh', 'Priya')
course=c('FIN','MKT','OP', 'HR')
dept=c('Dept1','Dept1','Dept2', 'Dept3')
gender = c('M', 'M', 'M', 'F')
grades = c('A','B','C','F')

rnorm(n=10, mean=50, sd=10)  #normal distributed,10 nos, mean, stddev
floor(12.67)  #remove decimals

(marks=floor(rnorm(4,50,10)))
(students = data.frame(rollno, name, course, dept, marks, gender, grades))
students
class(students)
str(students)
summary(students)          

df = students  # save as another Dataframe
#df = fix(df)  #edit DF: small data only
df
str(df)
class(df)
summary(df)

#basic summary
table(df$gender)
table(df$course,df$gender)
#more later 

#types of scale
#nominal, ordinal, interval, ratio

# Factors
str(df)
#factor is a category in R
df[1:2,]  # first 2 rows, all columns
df[,1:3]  # 1 to 3 columns, all rows
df[df$gender=='M' & df$marks > 40,]
df[df$gender=='M' & df$marks > 40 & df$course==c('FIN','MKT'),]


#names should be character
df$name = as.character(df$name)
str(df)  #see the structure now

#grades can be ordered
df$grades = factor(df$grades, ordered=T, levels=c('A','B','C','D','E','F'))
str(df)
df$grades
table(df$grades)  #see the order of display
#reverse the order : A is highest level
df$grades = factor(df$grades, ordered=T, levels=c('F','E','D','C','B','A'))
df$grades
table(df$grades) # order of display

#gender should not be ordered
df$gender = factor(df$gender, ordered=F, levels=c('M','F'))
df$gender

table(df$course,df$gender)

#filter data
df[df$dept == 'Dept1',]
df[df$marks >= 50,]

