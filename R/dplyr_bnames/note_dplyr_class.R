births <- read.csv(
  "births.csv",
  stringsAsFactors = FALSE
)


bnames <- read.csv(
  "bnames.csv",
  stringsAsFactors = FALSE
)



library(dplyr)


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


