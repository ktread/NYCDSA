  ### Python Advanced Topics
  
  ## Bitwise operator
    * Compares each bit in a number instead of the whole number
      * (10 and 12) = 8
    * Great alternative to determining if a number is even 
    * bool(0) = False, any non-zero returns a True
    * Uses in comparison of arrays bit by bit
  
  
  ## Yeild Statement
  
    * Range is a type of generator
    * Has a next method to you can iterate through for a loop
    * Yield statement 
      * always used in a function
      * Yield statement happen in a for loop 
      * Remembers the state of the function when used 
      * Used generators for iteration
      * Yeild --> Generator --> for Iteration
      * Generators are only able to be used once
      * Creating a generator is similar to list comprehension but you use () instead 
  
  ## Args and Kwargs
    * Allows you to have limitless number of variables you'd like to pass in
      * Tuple
      * Single star is positional arguements
    * Kwargs let you pass limitless dictionary items to a fucntion
      * Dictionary
      * Double start is k,v args
    * Great for using a list to unpack variables - you can pass a list into a function using a previous list, the situation below gives an example where one would normaly pass three values
      * args = [3,6,2]
      * list(range(*args))
    * The star indicates the arguement type not the name
  
  ## Classes
  * A way of organizing your code and making objects
  * Template for an object
  * Type tells you what class an object is in
  * First letter in a class is capitalized
  * Within a class:
    * __init\\__ medthod 
      * how to create the object of the class
  * The constructor is what creates an instance of the class
  * *self* = means the object itself
  * Attributes are stored in __dict\\__
  * _ single underscore indicates it should be hidden
  * __ double underscore makes it even harder to access the method
  * Instantiate - create the instance of the object of the class
  
  #### Special Name Methods
  * Opertaions invoked by special names 
  * You can redefince these in the subclass(?)
  * For example __self\\__
    * 'string' + str(self.obj)
    * This is call overwriting 
  * Could also do something like changing the way you add something (normal addition vs vector addition)
  
  #### Inheretence 
  
  * Allows you to create a derived class from another class
  * Object is the base class if you don't want to inheret from other classes 
  * If it's an intereted (child) class you would pass it the book object
  
  #### Decorators 
  
  ##### @classmethod
  * Class methods - different than general object methods
  * Takes a function as an input and returns modified function as the output
  
  ##### @staticmethod
  * Similar to class method but doesn't take any parametier 
  
  ##### @property
  * setter and getter methods
  * specific methods on how to change attribues
  * for every attribute prefix with "@"
  
      
      
  ## Common Commands
  | Term       | Definiton        |
  | ------------- |:-------------:|
  |dir(function)|shows all methods of a function|
  |input()|allows user to input data|
  |_ |used when you want the return the last assigned item - indicates you're not using it - it's a dummy variable |
  
