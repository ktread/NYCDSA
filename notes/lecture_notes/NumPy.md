  # NumPy
  
  ## NumPy
  
  * Fundamental package for scientific computing with Python
    * Primitive data types are representing to facilitate easy manipulation
    * Each element can be reached via indexing
  
  ### Ndarry
  * rows = 0, columns = 1
    * (rows,columns) in a tuple when whoing the size of the array
  * shaped collection of elements of the same data type
  * created from a list
  * Can be indexed
  * Ordered
  * N-dimensions (nested list)
  * Must be homogeneous but can be of many data types
  * Attribute vs Property
    * properties are special types of attributes; you can't change the property of an object
    * Items will get upcast to be the same data type
  * Mutable 
  * Only upcast when creating the array - cannot upcast after the fact
  * Can do point-wise arithmetic 
  * Does NOT act as a matrix
  * Broadcasting 
    * Like mapping but for specific functions in np
  *  
  
  #### Boolean Arrays
  * Can compare values to make boolean results in an array
  * USE LOGICAL OPERATORS (bitwise)
    * &, |, ~, ==
  * .any(), .all() 
  * y[(y>4) & (y<10)]
    * make sure you pay attention to order of operations
    * parenthesis around y comparisons vs & 
    * [6. Expressions — Python 3.7.4 documentation](https://docs.python.org/3/reference/expressions.html#operator-precedence)
  
  #### Fancy Indexing
  * Using boolean arrays are good for filtering
  * Fancy indexing allows us to do this
  * x = array([1,2])
    * x== 1 (array[true,false])
    * x[x==1]
      * gives us back the values only where x =1 
  * Very handy for filtering in Pandas 
    
  ### Tensor
    * a multidimensional numpy array is also called a tensor
    * a vector
    * very unclear -  will learn more during deep learning
  
  ### Vectorize
  * Scalar function to Vector function
  * You can pass a function as an argument (not the function call)
  * Any function that deals with individual elements allows you to apply it to each element in the object
    * vector_function = np.vectorize(function)
  
  ### Matrix and Linear Algebra
  * A matrix can only represent a 2D structure
  * first rows then columns (rxc)
  * Once an array is converted to a matrix it is then interpreted as a 2D object
  * Multiplication
    * not point-wise 
    * must use dot product 
      * row * column 
    * (m,n) dot (n,k) = (m,k)
      * inner values must match and outer values are the returned matrix
    * .T 
    * a * b =! b * a
  
  #### Identiy Matrix
  * If you multiply anything by the identity matrix it will return the original matrix back
  * a product of a matrix and its inverse is the identity matrix
  
  ## Inverse
  
  - The identity matrix is analogous to number one. One is referred to as the multiplicative identity, since any number multiplied by one remains unchanged. 
  - A nonzero number has a multiplicative inverse, or reciprocal.  The product of a number and its multiplicative inverse is the multiplicative identity, one. 
  
  **For real scalars:**
  
  - nonzero number: n
  - multiplicative identity: 1
  - multiplicative inverse: $\\frac{1}{n}$
  $$n \\times 1 = n$$
  
  $$n \\times \\frac{1}{n}=1$$
  
  - The analogy for a square matrix is called an inverse matrix. The product of a matrix and its inverse matrix (in either order) is the identity matrix. 
  
  **For real-valued square matrices:**
  
  - nonsingular matrix: $M$
  - identity matrix: $\\textbf{1}$
  - inverse: $M^{-1}$
  $$M \\cdot \\textbf{1} = M$$
  
  $$M \\cdot M^{-1}=\\textbf{1}$$
  
  $$M^{-1} \\cdot M=\\textbf{1}$$
  
  ## Common Commands NumPy
  | Function |   Definition  |
  | ------- |:---------:|-------:|
  |.array|creates an n-dimensional array (called an ndarry -creates an array based on a list)
  |.aragne(start,end,step)|returns a 1D array with elements from 0-n exclusive|
  |.linspace(start,end,number_elements)|end is inclusive, essentially evenly splits numbers across start,end using n-elements|
  |.ones(rows {tables},columns {rows}, {columns})|create an array with the shape indicated|
  |.vectorize | allows you to pass a function to each value in an array/vector|
  |.T |transposes a matrix|
  |.eye| returns the identity matrix|
  |.I |  gives the inverse of the original matrix|
  |@ / .dot() | dot product multiplication|
  |.random.seed()  | pseudo random generation, determines different sets of randomness; number is the setting; 1 provides for the same set of numbers|
  |.shape|shows the shape of the array|
  
  
