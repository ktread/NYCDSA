library(vcd)


mosaic(
  Survived ~ Class + Sex, 
  data=Titanic, shade=T
)



library(treemap)
data = read.csv('ggplot_course/data/apple.csv', TRUE)

data %>% head()

treemap(data,
        index=c("item", "subitem"),
        vSize="time1206",
        vColor="time1106",
        type="comp",
        title='Apple Corp. Financial Statements',
        palette='RdBu')


library(tidyr)
data <- read.csv('ggplot_course/data/soft_impact.csv', TRUE)

# nrow(data) = 17
data %>% 
  gather(key="lang", value="impact", JMP:R) %>% # head(20)
  ggplot(
    aes(x=Year, y=impact, group=lang, fill=lang)
    ) + geom_area(position="fill")

install.packages("car")
library(car)

scatterplotMatrix(mpg[,c(3,8,9)],
                  diagonal = 'histogram',
                  ellipse = TRUE)


install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars), order = "hclust")


library(maps)
library(ggplot2)

world <- map_data("world")



naples <- ggplot(world, aes(x=long, y=lat, group=group) ) +
  geom_path(color='gray10', size=0.3) + 
  geom_point(x=-81, y=26, size=10, shape='*') + 
  scale_y_continuous(breaks=(-2:2) * 30) + 
  scale_x_continuous(breaks=(-4:4) * 45) + 
  coord_map("ortho", orientation=c(26, -80, 0))+ 
  theme(panel.grid.major = element_line(colour = "gray50"),
        panel.background = element_rect(fill = "white"), 
        axis.text=element_blank(), 
        axis.ticks=element_blank(), axis.title=element_blank() ) +
  ggtitle("Naples, Florida")

naples



library(ggmap)
suppressPackageStartupMessages(library(ggmap))
quakemap <- ggmap(get_googlemap(center='china', zoom=4, maptype='terrain'),
                  extent='device') +
  geom_point(data=data, aes(x=lon, y=lat),
             colour='red', alpha=0.7, na.rm=TRUE) + theme(legend.position="none")





