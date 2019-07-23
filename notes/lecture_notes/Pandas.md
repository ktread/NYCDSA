  # Pandas
  
  * Package built on top of NumPy
  
  
  ## Structures
    
    ### Series
    
    * 1D labeled homogenous array 
    * Each element has an associate data label (index)
    * Can slice on the index
    * Index can share keys/duplicate keys
      * Allows you to filter by the index
      * Can make the index strings, dates, etc.
      * More like a key than a unique index
      * When you setup a custom index you must use that custom index to get back that value 
  * Since a series is similar to a dict it's each to convert a dictionary to a series 
    * Be aware that dictionaries cannot have repeated indicies so it will overwrite the value until the last existing k,v pair
    
  ### DataFrame
      
    * 2D labeled, size-mutable tabular structure with potentially hetrogeneously-type columns
    * Every column can be a different type but must be the same length (ie fill them in with None or np.nan if missing)
    * Single indexing [] returns a series, double indexing [\\[]] returns a dataframe
    * Using inplace is good for cleaning up code
    * Resetting index
      * First time wil give you a column called index; second time you'll get a column called level_o, third time - why are you even resetting it a third time?
    * Can be created with a nested list as well where each list is a row and then there's a list with column names, must specifiy column list with: columns = []
    * DataFrames have a row and column index vs Series with just a row index
      * Can retrive by df.columnname
    * You can access .str methods with the .column notation (.column.str) and apply across all the elements on the column like .column.str.strip()
    * Can slice multiple columns pass a list to the df (df\\[['col','col2']])
    * .read_csv
      * you can add index_col='name/index' so as not to create a new index column
  
  ### Data Manipulation
  * Manipulating multiple dataframes
    * concat
    * hstack
    * concat
    * merge
      * merging is the most common way to combine data frames 
      * gives you an "on" parameter to choose which value to match
      * merging can be slow if you do a lot of it
  * Selecting and Filtering
    * loc
      * allows you to subscript a dataframe properly, ie you can use the column name itself
      * ie loc[row,column] would return a specific value
      * Fancy Indexing: df1.loc[df1.a==0,:]
    * iloc
      * lets you use position number instead of name like loc
    * df.apply
      * uses axis (typically using 1)
      * 
  
  ## Common Commands
  | Function                         | Definiton                                                                                                                           |
  |:-------------------------------- |:----------------------------------------------------------------------------------------------------------------------------------- |
  | .series([],index=[])             | list for seies, can pass custom index                                                                                               |
  | .index                           | shows the construction of the index                                                                                                 |
  | .items()                         | returns index and values                                                                                                            |
  | df.columns                       | columns list                                                                                                                        |
  | df.set_index('column_name')      | non-mutating                                                                                                                        |
  | inplace=True                     | and option when setting the index- mutating                                                                                         |
  | df.reset_index()                 | restores original index                                                                                                             |
  | df.column                        | returns the column without having to formally index                                                                                 |
  | .read_csv()                      | default it with headers, headers = None, if there are headers it's considered a column index, otherwise it will create an int index |
  | .concat([df1,df2],axis = (1/0))  | 1 - column, 0 - row , sort = (T/F)                                                                                                  |
  | .hstack((df1.values,df2.values)) | stacks arrays instead of dfs                                                                                                        |
  | .concat([df1,df2], axis=, join=) | axis(1/2), join (inner, outer, etc)                                                                                                 |
  | .sort_values('column')           | sorting values                                                                                                                      |
  | .merge(df1,df2, how=, on, )      | joins two data frames, if the columns you want to join have different names you can use (left_on/right_on); default join is inner   |
  | .loc(row,column)                 | indexes based on column name and row num                                                                                            |
  | .loc[df.a==0:]                   | returns boolean series for all rows = 0, if you move it to the other side of the : it looks at all columns = 0                      |
  | .apply                           | useful for lambda functions  |
