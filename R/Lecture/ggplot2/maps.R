map <- map_data('state')
arrests <- USArrests
names(arrests) <- tolower(names(arrests)) 
arrests$region <- tolower(rownames(USArrests))


usmap <- ggplot(data=arrests) +
  geom_map(map =map, aes(map_id=region, fill=murder), color='gray40') + 
  expand_limits(x=map$long, y=map$lat) + 
  scale_fill_continuous(high='red2', low='white') +
  theme_bw() +
  theme(panel.grid.major = element_blank(),
        panel.background = element_blank(),
        axis.text=element_blank(), axis.ticks=element_blank(), axis.title=element_blank(), 
        legend.position = c(0.95,0.28), legend.background=element_rect(fill="white", colour="white") ) + 
  coord_map('mercator') +
  labs(title='Number of Murders Country-wide in 1973')