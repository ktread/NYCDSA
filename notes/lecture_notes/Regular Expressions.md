  # Regular Expressions
  
  * .findall - finds all occurances 
  
  
  ## Common Commands
  | Term       | Definiton        |
  | ------------- |:-------------:|
  |. | find any single char|
  |* | any amount of char (zero or more)|
  |()| group - depends on how many you have|
  |+| at least one char at the end|
  | \\| |or |
  |\\ | escape char|
  |.start()|start of find|
  |.end()|end of find|
  |.span| span of find|
  |.group|return group|
  |?|preceding expression either once or zero times|
  |+|matches preceding expr at least once|
  |{start:end}|returns a range for char|
  |^|beginning of text|
  |$|end of text|
  |[]|set of char you wish to match (special chat miss meaning inside sets) (adding a ^ at the beginning means to find anything that's not those chars)|
