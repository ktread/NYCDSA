births <- read.csv(
  "births.csv",
  stringsAsFactors = FALSE
)

head(births)

bnames <- read.csv(
  "bnames.csv",
  stringsAsFactors = FALSE
)

head(bnames)


library(dplyr)

df <- data.frame(
  color = c("blue","black", "blue", "blue","black"),
  value = 1:5)

filter(df, color == 'blue')

df %>% filter(., value %in% c(1,4) | color =='black')

df %>% select(.,color, value)
df %>% select(.,starts_with('c'))
df %>% select(.,starts_with('v'))

df %>% arrange(.,desc(color))

df %>% mutate(.,double = value*2)


df %>% transmute(.,double = 2*value)

head(bnames)

bnames %>% filter(.,name == 'Katherine')
name = bnames %>% select(.,soundex, name)
kate = name %>% filter(.,soundex == 'K365')
distinct(kate,name)

num = bnames  %>%  filter(.,prop > .01, year>2000)
num %>% summarize(., n())

bnames %>% mutate(.,perct = prop*100) %>% arrange(.,desc(perct))



#JOINS

x = data.frame( name = c("John", "Paul", "George",
                         "Ringo", "Stuart", "Pete"),
                instrument = c("guitar", "bass", "guitar",
                               "drums", "bass", "drums"),
                stringsAsFactors = FALSE)


y <- data.frame( name = c("John", "Paul", "George",
                          "Ringo", "Brian"),
                 band = c(TRUE, TRUE, TRUE,
                          TRUE, FALSE),
                 stringsAsFactors = FALSE)


left_join(x,y,by = 'name')

semi_join(x,y,by = 'name')

anti_join(x,y,by = 'name')

by_color = df %>% group_by(., color)
summarize(by_color, total = sum(value))
group_by(bnames,name,year)


summary = summarise(group_by(bnames,name,year),total=sum(n))

summary = summarise(group_by(bnames, name, year), total=sum(n)) 
filter(summary, name=='Vivian', year==1895)


# Question: Using bnames and births, how many Vivian’s were born in each of 
# the top 5 most popular years for the name?


### If only one name is interested, filter first to gain efficiency
system.time({
  bnames %>%
    inner_join(births, by=c('year','sex')) %>%
    mutate(n=round(prop * births)) %>%
    group_by(name, year) %>%
    summarise(total=sum(n)) %>%
    filter(name=='Vivian') %>%
    arrange(desc(total) )%>%
    top_n(5)
})


system.time({
  bnames %>%
    filter(name=='Vivian') %>%
    inner_join(births, by=c('year','sex')) %>%
    mutate(n=round(prop * births)) %>%
    group_by(name, year) %>%
    summarise(total=sum(n)) %>%
    arrange(desc(total) )%>%
    top_n(5)
})



# Order the data by proportion of the name instead
bnames %>%
  filter(name=='Vivian') %>%  
  inner_join(births, by=c('year','sex')) %>%
group_by(name, year) %>%  
  summarise(
    vivian_count = sum(round(prop * births))
    ) %>%
    inner_join(
      births %>% group_by(year) %>% summarise(baby_count=sum(births)),
      by="year"
    ) %>%
  arrange(desc(vivian_count/baby_count) )%>%
  head()

#### wrong way (because of inner join):
bnames %>%
  filter(name=='Vivian') %>%  
  inner_join(births, by=c('year','sex')) %>%
  group_by(name, year) %>%  
  summarise(
    vivian_count = sum(round(prop * births)),
    baby_count = sum(births)
  ) %>%
  arrange(desc(vivian_count/baby_count) )%>%
  head()



# Side issue: order of the grouping factor matters
bnames %>%
  inner_join(births, by=c('year','sex')) %>%
  group_by(name, year) %>%
  summarise(total=sum(prop*births)) %>% 
  summarise(sum(total))

bnames %>%
  inner_join(births, by=c('year','sex')) %>%
  group_by(year, name) %>%
  summarise(total=sum(prop*births)) %>% 
  summarise(sum(total))


