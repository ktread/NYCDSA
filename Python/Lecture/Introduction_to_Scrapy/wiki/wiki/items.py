# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy

class WikiItem(scrapy.Item):  # scrapy.Item is a class in the scrapy package
	film = scrapy.Field() # Field is a part of the item class
	year = scrapy.Field()
	awards = scrapy.Field()
	nominations = scrapy.Field()  # each of these are a class attribute - like an object attr but it belongs to the entire class
	best_picture = scrapy.Field()
