library(ggplot2)

######### Basics ########
g = ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point()
g


# Alternative
ggplot() +
  geom_point(data = mpg, aes(x = displ, y = hwy))

# For this case, put data and aes in ggplot make sense
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() + 
  geom_smooth(method = "lm")

# To visualize one more feature: 
ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy, color=class)) + 
  geom_smooth(aes(x = displ, y = hwy), method="lm")

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color=class)) + 
  geom_smooth(method="lm")


######### Layers ########

# Base
g <- ggplot(data = mpg, aes(x = displ, y = hwy))


# Layers added
g + geom_point(aes(color = class))
g + geom_point(aes(size = class))
g + geom_point(aes(shape = class))
g + geom_point(aes(alpha = class))

# Comparison: Inside and Outside of `aes`
g + geom_point(aes(color = class))
g + geom_point(color="red")

# Multiple Aesthetic
g + geom_point(aes(color=class, shape=class))

# `x` and `y`  in ggplot() were overwritten
g + geom_point(aes(color = class)) +
  geom_point(aes(x=mean(displ), y=mean(hwy)), size=3)




######### Facets ########
# formla is used. Inspect the params you have
g + geom_point() + facet_grid(. ~ cyl)
g + geom_point() + facet_grid(drv ~ .)
g + geom_point() + facet_grid(drv ~ cyl)
g + geom_point() + facet_wrap( ~ class)


######### Geoms ########
# Same data + aes but different geom
g + geom_point()
g + geom_smooth()
g + geom_histogram() # not working: error message
g + geom_boxplot() # not working: plot makes no sense


######## Box Plot #######
ggplot(data = mpg, aes(x = class, y = hwy)) + geom_point()
ggplot(data = mpg, aes(x = class, y = hwy)) + geom_boxplot()

ggplot(
  data = mpg, 
  aes(x = reorder(class, hwy, FUN=median), y = hwy)
  ) + geom_boxplot()

####### Bar Chart #######
# Bar Chart: Frequency Table
ggplot(data = diamonds,aes(x=cut)) + 
  geom_bar(aes(fill=cut))

# Bar Chart: Contingincy Table
ggplot(data = diamonds, aes(x = color)) +
  geom_bar(aes(fill = cut))

ggplot(data = diamonds, aes(x =color)) +
  geom_bar(aes(fill = cut), position="fill")

ggplot(data = diamonds, aes(x =color)) +
  geom_bar(aes(fill = cut), position="dodge")


# To visualize ratio
library(dplyr)



diamonds %>% 
  group_by(color,cut) %>% 
  summarize(n=n()) %>% 
  mutate(ratio = (n/sum(n))*100) %>% 
  ggplot() +
  geom_bar(aes(x=color,y=ratio,fill = cut), position='dodge', stat='identity')
  


diamonds %>% 
  group_by(color, cut) %>%
  summarise(n=n()) %>% 
  mutate(ratio = n/sum(n)) %>%
  ungroup() %>%
  ggplot() +
  geom_bar(aes(
    x=color, y=ratio, fill=cut
  ), position = "dodge", stat="identity"
)

####### Histogram #######
# band width
g <- ggplot(data = diamonds, aes(x = carat))

g + geom_histogram(binwidth = 1)
g + geom_histogram(binwidth = 0.1)
g + geom_histogram(binwidth = 0.01)
g + geom_histogram()


# zoom
g <- ggplot(data = diamonds, aes(x = depth))
zoom <- coord_cartesian(xlim = c(55, 70))
g + geom_histogram(binwidth = 0.2)
g + geom_histogram(binwidth = 0.2) + zoom


g + geom_histogram(
  aes(fill=cut), binwidth = 0.2,
  position = position_stack(reverse=TRUE)
) + zoom

# How to better compare?
g + 
  geom_histogram(aes(color =cut),binwidth = 0.2) + 
  facet_grid( ~ cut) + zoom

g + 
  geom_histogram(binwidth = 0.2) + 
  geom_freqpoly(binwidth=0.2, color="maroon") + 
  facet_wrap( ~ cut) + zoom

g + 
  geom_freqpoly(aes(color = cut), binwidth = 0.2) +
  facet_wrap( ~ cut) + zoom

g + geom_freqpoly(aes(color = cut), binwidth = 0.2) + zoom
g + geom_density(aes(color = cut)) + zoom # approximation

g + geom_boxplot(aes(x=cut, y=depth))

######## Smooth #########
g <- ggplot(data = diamonds, aes(x = carat, y = price))

g + geom_point()
g + geom_bin2d() +  scale_color_brewer(direction = 1)
g + geom_density2d()
g + geom_point() + geom_density2d()

# `geom_point` with `alpha`
g + geom_point(alpha=0.01, size = .05)

g + geom_smooth(aes(color = cut), se = FALSE)
g + geom_smooth(aes(color = cut), method="lm", se = FALSE)
g + geom_smooth(aes(color = cut), method="loess", se = FALSE)

ggsave("test-plots.pdf")
