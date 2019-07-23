  # Introduction to R
  
  * Can call C,C++, and Fortran code
    * avoid looping because of C++?
  * Can connect to databases
  * Can be used as an embedded engine
  * Interperative language
    * read line by line - are some not?
  * All data is read into memory
    * Can use AWS
  * Single threaded 
  * You can build your own C++ functions 
  * Ctrl + Shift + N
  * Source
    * going to run everything in that file as one script
  * Factors (data type)
    * stored like a vertial indexed database
      * original text is stored as levels
    * used for categorical data
  * Lists
    * can be of any type
    * vectors of addresses
    * homogenious
  * s/l apply
    * sapply() returns a vector while lapply() returns a list
    * This kind of syntax is referred to as functional programming is that a function (e.g., mean, sd, sqrt, etc.) is taken as an argument in another function (e.g., sapply or lapply)
    * apply(mat, 1, sum)
      * 1 is across rows
      * 2 is across columns
  
  ## Common Commands R
  | Function              |                                      Definiton                                      |
  | --------------------- |:-----------------------------------------------------------------------------------:|
  | Ctrl+Shift+N          |                                      New file                                       |
  | source file           |                     will run auto generated code in other files                     |
  | Ctrl+L                |                                   clears console                                    |
  | package::function     | multiple packages with the same fucntion this is how you call the specific funciton |
  | setwd()               |                                   set working dir                                   |
  | getwd()               |                            get current working directory                            |
  | available.packages()  |                       shows all possible packages to download                       |
  | install.package()     |                                  installs package                                   |
  | installed.packages()  |                            shows what you have installed                            |
  | str                   |                                      structure                                      |
  | c(x,y)                |                                   combine vectors                                   |
  | seq(n,n)              |                                   create sequence                                   |
  | order(column$orderby) |      can then refer to them by index citydf[order], allows you preserve order       |
  | sapply(v, f)          |                                   vector,function                                   |
  | .as.list()            |                 simple apply;        mylist = as.list(iris[ ,1:4])                  |
  | lapply(list,f)        |                   list apply; applies to listlapply(mylist, mean)                   |
  | paste(vec,vec)        |                                                                                     |
  | switch                |                      like an if else that's a bit more concise                      | 
   
  
