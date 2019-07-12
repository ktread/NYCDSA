  # Python Cheatsheets 
  
  ## Calling module
  import math
  math.pi
  math.factorial(5)
  from math import * 	#Imports all contents of module
  factorial(5)
  import math as ma 	#Assign an alias for module name
  ma.factorial(5)
  
  # Defining Functions
  name_of_func = lambda x, y: expression
  *args (tuple of arguments) 		# can be used when defining function
  **kwargs (keyword arguments)
  
  # File I/O
  f = open('simple.txt', 'r')	# 'r' for read, 'w' for write, 'a' for appending
  lines = f.readlines()		# 'r+' for read and write
  f.write()
  f.close()
  with open('simple.txt', 'r+') as f:
  
  # Functional operators
  list(map(func_name, list_name))
  list(filter(func_name,list_name)) #The condition is given in the form of a boolean function.
  zip is a binary function that takes two lists of the same length and 
  	makes one list containing pairs of corresponding elements of the two lists.
  #Ex. list(map(lambda p: p[0]+p[1], zip([1,2,3], [10,20,30])))
  
  # Boolean Functions
  (a and b) (a or b) (not a)
  dir(type) #A list of all attribute of the type
  from collections import Counter, defaultdict
  Counter(lis) 		# Return a dict with # of occurance
  
  # List Comprehension
  [ <expresion> for <element> in <list> if <boolean> ]
  [ <expr1> if <boolean> else <expr2> for <element> in <list> ]
  [ <expr1> if <boolean> else <expr2> if <boolean> else <expr3> for <element> in <list> ]
  
  # List operations
  + 	#Concatenate two lists
  *   #Concatenate lists
  sum()
  max(),min()
  sorted(list_name, reverse = True)
  sorted(list_name, key = len)
  lis.extend(another_lis)	# Flatten the input list 
  lis.insert(i, x) 		# Insert x at location i
  lis.sort()				# Mutating sort operation
  lis.count(i)			# Number of i
  
  # String operations
  list('dog') => ['d','o','g']
  ''.join(list_name)
  str.strip()
  str.split()
  str.replace('a','b') 	#Replace a by b
  str.find('a') 			#Returns the lowest index in str where the substring 'a' is found.
  print("hello, %.2f!" % 2017.1314)
  print('My name is {0} and I am {1} years old'.format('Mike', 25))
  print('My name is {name} and I am {age} years old'.format(name='Mike', age=25))
  
  # Set operations
  set_a | set_b	# set_a U set_b
  set_a & set_b	# intersection
  set_a - set_b	# difference
  set_a ^ set_b   # symmetric difference (a-b | b-a)
  
  # Dict operations
  a in dict 				# check if a key is present
  dict.get(key,otherwise)	# return the value of the given key, return "otherwise" otherwise
  dict.keys()
  dict.values()
  dict.items()
  
  # Errors and Exception Handling
  The complete list of errors is here: https://docs.python.org/3.6/library/exceptions.html
  raise Errortype(statement)
  raise Exception(statement)	#This will terminate the code
  
  try:
          commands
  except Exception:
          handle exception
  \'''
  try:
          commands
  except Exception as e:
          print(type(e),e)
  \'''
  \'''
  try:
      statements            # start by executing these
  except name:
      statements            # execute if exception “name” was raised
  ...
  except:
      statements            # execute if an exception was raised that is not named above
  else:
      statements            # execute if no exception was raised
  finally:
      statements            # execute no matter what
  \'''
  
  # For loop
  for i,e in enumerate(lis):
  
  # Yield statement
  yield 			# could be used to replace return 
  generator = (math.sqrt(x) for x in [1, 4, 9, 16])	#Another way to make generator 
  
  # class
  class Classname(object):
      def __init__(self, ...args...):
      	self.var = var
          initialize representation by assigning to variables
  
      def methodname(self, ...args...):
          define method; 
          change representation or return value or both; 
          use self.var to refer to variable var defined in init.
  
      def __str__(self):
          return 'Vector' + str(self.coords)
