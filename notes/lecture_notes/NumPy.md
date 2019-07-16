  # NumPy
  
  ## NumPy
  
  * Fundamental package for scientics computing with Python
    * Primitive data types are representing to facilitate easy manipulation
    * Each element can be reached via indexing
  
  
    
    
  ### Ndarry
  * Created from a list
  * Can be indexed
  * N-dimentions
  * Must be homogenous but can be of many data types
  * Attribute vs Property
    * properties are special types of attributes; you can't change the property of an object
    * Items will get upcast to be the same data type
  * Mutable 
  * Only upcast when creating the array - cannot upcast after the fact
  * Can do pointwise arithmatic 
  * Does NOT act as a matrix
  
  #### Boolean Arrays
  * Can compare values to make boolean results in an array
  
  #### Fancy Indexing
  * Using boolean arrays are good for filtering
  * Fancy indexing allows us to do this
  * x = array([1,2])
    * x== 1 (array[true,false])
    * x[x==1]
      * gives us back the values only where x =1 
  * Very handy for filtering in Pandas 
    
  ### Tensor
    * amultidemensional nupy array is also called a tensor
    * diagonal operator
  
  ### Vectorize
  * You can pass a function as an arguement (not the function call)
  * Any function that deals with individual elements allows you to apply it to each element in the object
    * vector_function = np.vectorize(function)
  
  ### Matrix and Linear Algebra
  * A matrix can only represend a 2D structure
  * Once an array is converted to a matrix it is then interpreted as a 2D object
  * Multiplication
    * not pointwise 
    * must use dot product 
      * row * column 
    * .T 
    * a * b =! b * a
  
  #### Identiy Matrix
  * If you multiply anything by the identity matrix it will return the original matrix back
  * a product of a matrix and its inverse is the identity matrix
  
  ## Common Commands NumPy
  | Function | Definiton        |
  | ------------- |:-------------:|
  |.array| creates an n-dimentional array (called an ndarry -creates an array based on a list)|
  |.arragne(start,end,step)|returns a 1D array with elements from 0-n exclusive|
  |.linspace(start,end,number_elements)|end is inclusive, essentially evenly splits numbers across start,end using n-elements|
  |.ones(rows,columns,??)|
  |.vectorize|allows you to pass a function to each value in an array/vector|
  |.T|transposes dims|
  |.eye|??|
  |.I|gives the inverse of the original matrix|
  |@|dot product multiplication|
  |.random.seed()|psudeo random generation, determines different sets of randomness; number is the setting; 1 provides for the same set of numbers|
  
  
  
