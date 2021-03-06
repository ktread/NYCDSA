  ### Python Basics
  
  * Check bad shit first.
    * you can reduce complexity on each line by limiting the scope of what you care about to each line
    * don't carry complexity beyond where you absolutely have to
    * Actively organize code
    * You're not clever enough to debug the most clever code you can write
  * Return functions are used by the program which can use the result
  * Printing is for your eyes only
  * Classes are typically written with first letter capitalized\\
  * Importing "*" is generally not a good idea since it can overwrite existing values/variables 
  * A package is a collection of modules 
  
  int / int = float
  int // int = floor (integer division)
  float / int = float
  num % num = modulus (remainder)
  num ** num = exponents
  
  ## Named Functions
  
  * def fnname(): let's interpreter know you're about to enter a function 
  * Function is over when indentation is back to the left 
  * functions do not need to have a return statement 
  
  ## Lambda (anon functions)
  
  * Lambda format 
    * lambda arguement(s): return statement
    * lambda always returns - if you don't want a return a lambda function is likely not a good idea
  
  ## Commond Commands
  | Command        | Use        |
  | ------------- |:-------------:|
  |type()|returns the object type|
  |pass|skip for now|
  |%load_ext autoreload|reloads external libraries|
  |%autoreload 2|sets the preference 0-don't reload 1- only true 2- don't reload unless specified|
  |sorted(object,key)|sorts objects|
  |index()|finds first occurance of a value|
  |iter()|creates an iterator object|
  |list(map(function, list))| function for mapping a list|
  |filter(function, list)|filters values|
  |zip()||
  |.strip()|removes whitespace|
  
  ## Keyboard Shortcuts
  
  | Command        | Use        |
  | ------------- |:-------------:|
  |ctrl+right|indent right|
  
  
  ## Common Terms
  | Term       | Definiton        |
  | ------------- |:-------------:|
  |lambda|anon function |
  |list []| ordered colletion of elements, mixed types|
  |mutating operation|changes where it lives in memory (changes the variable), does not return something|
  |map|apply a function to all elements of a list|
  |is|are these pointing to the same object in memory|
  |tuple () |immutable, similar to lists, does not need to be pairs|
  
  
  ## Useful links
  
  [Magics](https://ipython.org/ipython-doc/3/interactive/magics.html)
  [Jupyter Tips](https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/)
  
