
library(ggplot2)
library(dplyr)

texas = read.csv("data/texas.csv")
head(texas)
bees = read.csv("census.csv")
usa <- map_data("usa")
library(maps)
counties = map_data("county")
ggplot(data = counties)  +
  geom_polygon(aes(group = bees$County, fill = bees$County))


# A very basic map
g <- ggplot(data = texas, aes(x = long, y = lat))
g + geom_point()
g + geom_polygon(aes(group = group))

# side issue:
texas2 = texas[sample(nrow(texas)), ] 
ggplot(
  data = texas2, 
  aes(x = long, y = lat)
  ) + 
  geom_polygon(aes(group = group))

# A very basic visualization of populations
tx <- g + geom_polygon(aes(group = group, fill = bin))
tx


###### Titles ######
texas2<- tx + ggtitle("Population of Texas Counties")


###### More Manipulations ######
g <- ggplot(
  data = diamonds, aes(x = carat, y = price)
  ) +
  geom_point()

str(g)


###### Coordinate System ######
g$coordinates
g + coord_polar()
g + coord_flip()
g + coord_fixed(ratio = 1/10000)
g + coord_cartesian(ylim = c(0,5000), xlim = c(0, 1))

# log coordinate
g + coord_trans(y = "log10")
g + coord_trans(y = "log10", x = "log10")



###### Guide #######
ggplot(
  data = mpg, 
  aes(x = displ, y = hwy)
  ) +
  geom_point(aes(color = cty)) # + scale_color_gradient(low = "red", high = "yellow")

ggplot(
  data = mpg, 
  aes(x = displ, y = hwy)) +
  geom_point(aes(size = cyl)) # + scale_size_area()

ggplot(
  data = mpg, 
  aes(x = displ, y = hwy)) +
  geom_point(aes(shape = fl)) # + scale_shape_manual(values = c(0, 15, 1, 16, 3))

tx + scale_fill_brewer(palette = "OrRd")
tx + scale_fill_brewer(palette = "Spectral")
tx + scale_fill_brewer(palette = "Greens")
tx + scale_fill_manual(values = c("red", "orange", "yellow", "green", "blue"))


###### Theme #######
tx + theme_grey()
tx + theme_bw()
tx + theme(
  panel.border = element_rect(
    colour = "black", fill = NA
    )
  )

library(maps)

tx + scale_fill_brewer(palette = "Blues") +
  xlab("") +
  ylab("") +
  theme_bw() +
  coord_map() +
  ggtitle("Population of Texas Counties")


###### Legends #######
q <- ggplot(
  data = mpg, 
  aes(x = displ, y = hwy)) +
  geom_point(aes(color = cty)) 

q + theme(legend.position = "bottom")

q + guides(color = "colorbar")
q + guides(color = "legend")
q + guides(color = "none")


###### Final ######
tx + scale_fill_brewer(
  palette = "Blues",
  name = "Population",
  labels = c(
    "0 - 999", "1,000 - 9,999", "10,000 - 99,999", 
    "100,000 - 999,999", "1,000,000+")
  ) +
  xlab("") +
  ylab("") +
  theme_bw() +
  coord_map() +
  ggtitle("Population of Texas Counties")





d2 <- subset(diamonds, color ==
               "D")
cc <- ggplot(data = d2, aes(x =
                              color)) + geom_bar(aes(fill =
                                                       cut), position = "fill")
cc
cc + coord_polar(theta = "y")

#install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all()


install.packages("ggthemes")
library(ggthemes)  # install.packages("ggthemes")
p <- ggplot(data = diamonds, aes(x = color)) + geom_bar(aes(fill
                                                            = cut))
p + theme_economist() + scale_fill_economist()


tx + scale_fill_brewer(palette = "Blues") +
  xlab("") +
  ylab("") +
  theme_bw() +
  coord_map() +
  ggtitle("Population of Texas Counties")

install.packages("addinslist")
library(addinslist)