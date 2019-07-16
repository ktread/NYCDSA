  ## Web Scraping with Python
  
  ### Beautiful Soup
  
  * HTML parser 
  * bs4 import Beautiful Soup
  * Beautiful soup takes two objects
    * first arg is text 
    * second arg is mode (html,xml,etc)
  * method is the html tag
  * can call methods on the methods
  
  #### Pulling Data
  * requests package
  * response has a lot of methods 
  * response.text is the value of the site
  
  ### Scrapy
  
  * Always start a scrapy project from scratch (filewise)
    * It's easy to miss items and throw errors 
  * You define an item:
    * Containers that are used to collet data - works like a dict
  * You define spiders:
    * Classes which define how a certain site or group of sites will be scraped
  * You define pipelines:
    * Classes that sequentially process data
  * __init__.py
    * Inicates that it's a package and each flie is a module in the folder
    * Empty since it's a placeholder - just shows it is a package
  
  * XPATH
    * Index starts at 1 :(
    * language for selecting tags in XML or HTML
    * single slash / means direct child of the current tag
    * double slash // means _any_ decendant of the currnt tag 
    * a dot . refers to the current tag
    * //tr (gives you all tr tags in the entire doc)
    * ./td[2] (select the second td tag after the current tag)
    * @ finds tag with certain attributes 
      * //div[@class = "mine"] selects all the div tags with this class attr
      * //*[@class="mine"] select all tags in this class
    * .etract_first() - dealing with empty lists
  
  
  ### Common Commands and Definitions
  | Term       | Definiton        |
  | ------------- |:-------------:|
  |value|text between tags|
  |attributes (a)|attributes of values (a href=) attributes always have an = after it|
  |.attrs|getting the attributes of a tag|
  |.get_text()|returns all values from the child tags|
  |.get()|gets the value of an attributes|
  |.find_all|will return all of the tags of a certain type, returns resultset (similar to a list but don't use as oen)|
  |requests.get()|get value of URL|
  
  
  #### Helpful Sites
  [Regex101](www.regex101.com)
  
  
