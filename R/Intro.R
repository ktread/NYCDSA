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
