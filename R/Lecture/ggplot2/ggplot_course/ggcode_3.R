library(vcd)

mosaic(
  Survived ~ Class + Sex, 
  data=Titanic, shade=T
)



library(treemap)
data = read.csv('data/apple.csv', TRUE)

data %>% head()

treemap(data,
        index=c("item", "subitem"),
        vSize="time1206",
        vColor="time1106",
        type="comp",
        title='Apple Corp. Financial Statements',
        palette='RdBu')


library(tidyr)
data <- read.csv('data/soft_impact.csv', TRUE)

# nrow(data) = 17
data %>% 
  gather(key="lang", value="impact", JMP:R) %>% # head(20)
  ggplot(
    aes(x=Year, y=impact, group=lang, fill=lang)
    ) + geom_area(position="fill")



























