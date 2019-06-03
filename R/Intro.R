## Part 1

my_mat = matrix(1:12,4,3)
my_mat
v <- 1:12
v
dim(v) <- c(4,3)
v
vector1 <- 1:4
vector2 <- 5:8
vector3 <- 9:12
cbind(vector1,vector2,vector3)
rbind(vector1,vector2,vector3)
my_mat[,2, drop=F]
my_mat <- matrix(1:12,4,3)
my_mat[3,2] =15
my_mat
my_mat[,3] <- c(20,21,22,23)
(my_mat+1) -my_mat
a <- array(1:24, dim = c(3,4,5))
a           
my_mat
my_mat2 = my_mat
my_mat*my_mat2
lst =ls()
rm(lst)
city = c('Seattle', 'Chicago', 'Boston','Houston')
temp = c(78,74,50,104)
citydf = data.frame(city=city,temp=temp)
citydf
class(citydf[,1])
citydf[,'city']
citydf$city
avgcity = mean(citydf$temp)
avgcity
str(citydf)
summary(citydf)
x = 3:7
x
y = as.factor(x)
str(y)
as.numeric(as.character(y))
citydf$temp
order(citydf$temp)
citydf[order(citydf$temp),]
write.table(citydf,file='my_data.csv',sep=',', row.names = F)
read.csv("my_data.csv")

rm(list=ls())



x = "Hello, I am"
y = "Kate"
cat(x,y)

x= '8'
class(x)
x+1
x = as.numeric(x)
x+1


x_1 = rnorm
x_2 = 1:10
x_3 = x_2[1:5]
my_sum = x_1 +x_3
my_sum
x_1[1]*x_1[3]
x_1+c(1,2)
d = x_1 +c(1,2)


## Part 2

employee = list(Name='John', Position= 'cashier', Salary=9.50)
employee
employee$Name
student= list(Name="Peter", Classes= c("Bio101","Psych200", "CSC255"))
student
student['Classes']
student$Classes[1]
student[[2]]  #LEN 3 - Gets actual values - could also use $ notation
employee[-1]  # Negative index returns without the value - not from the back
employee[c("Name","Position")]
## Differs from a python dict in that we couldn't call this normally in python (two keys) - would 
## have to use list comprehension in python
iris
v = 1:4
sapply(v, sqrt)
lapply(v, sqrt)
sapply(iris[,1:4], mean)
mylist = as.list(iris[,1:4])
mylist
x = sapply(mylist,sd)
lapply(iris[,1:4], mean)
sapply # returns a vector
lapply #returns a list
mat = matrix(1:6, nrow=2,ncol=3)
mat
apply(mat, 1,sum)
apply(mat, 2,sum)
fruit = 'apple orange grape banana'
nchar(fruit)
fruitvec= strsplit(fruit,split = ' ')
fruitvec
paste() # concatenate 
n = 1:8
paste('x',n)
xvar = paste0('x',n)
paste('x',n, sep = '.')
right = paste(xvar,collapse = ' + ')
right
form = paste('y ~', right)
form
n = 'R is great! I love data!'
substr(n,6,10)
grep("love",n)
nvec = strsplit(n,split = ' ')
grep('love',unlist(nvec))
nvec_2 = unlist(nvec)
nvec_2
nvec = gsub('great','wonderful',n)
nvec
species = iris$Species
species
levels(species)

ranks = c(4, 1, 1, 4, 3, 3, 2, 3, 2, 4)
ranks
rank_factor = factor(ranks)
rank_factor
rank_factor +1
x=2:4
y = factor(x)
as.numeric(as.character(y))

vec2 = factor(rep(c('b','a'), c(4,6)))
vec2
levels(vec2)
vec2 = ordered(vec2,levels=c('b','a'))
vec2


num = 0
if (num%%2 != 0) {
  cat(num,'is odd')
} else if (num==0) {
  cat(num, 'zero is always even')
} else {
  cat(num, 'is even')
}


num = 23
if (num %% 2 != 0) {
  if (num %% 5 == 0) {
    cat(num, 'is divisible by 5')
  } else {
    cat(num, 'is odd, but not divisible by 5')
  }
} else if (num == 0) {
  cat(num, 'is even, although you may not realize it.')
} else {
  cat(num, 'is even')
}



set.seed(1) #To ensure reproducible results. 
age = sample(0:100, 20, replace=TRUE)
res = ifelse(age > 70, 'old', ifelse(age <= 30,
                                     'young', 'middle'))
res

switch(2,'red','green','blue') ##possibly allows someone to choose a variable - integer returns the value
age_type = 'middle'
switch(age_type,
       young = age[age<=30],
       middle = age[age<=70 & age>30],
       old = age[age>70]
)



sign_data = read.csv('TimesSquareSignage.csv', header=TRUE)
sign_data$Width

for (n in sign_data$Width) {
  if (is.na(n)) {
    cat('WARNING: Missing width\n')
  } else cat('All Set\n') 
}

obs = nrow(sign_data)
for (i in 1:obs) {
  if (is.na(sign_data$Width[i])) {
    cat('Warning: Missing width for sign no.',i,'\n')
  }
  }


i= 1
while (i <= obs) {
  if (is.na(sign_data$Width[i])) {
    cat('WARNING: Missing width for sign no.', i, '\n')
  }
  i = i +1 }
