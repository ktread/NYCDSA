  # Pandas
  
  ## Series
  * Can use index multiple times
    * more like a key - sort of like a dict but the keys must be the same type and they do not need to be unique 
    * multiple keys allows for filtering
  
  ## DataFrame
    * pd.DataFrame()
    *  Every column must be the same lendth
    * typically represents tables
    * each column cab be a different type
    * to change the index
      * .reset_index().set_index()
  * If you reset the index it will create an index column, if you do it again it will create a column called level_0, a third time it throws an error 
  * df['index']
    * returns a series
  * df\\[[\\'index']]
    * returns a dataframe
  * Each column of a dataframe is a series that shares an index
  * df.drop()
    * drops columns you do not want
  * Droppiong data
    * Rows by 
    * Columns by 
  * Can create a df with a nested list
    * ie each row is a list
  * df.column (ie df.year)
    * you can retrive columns by attribute
  * df.cloumns[newlist]
    * allows you to replace the values of the columns with new keys
  * df.columns.str.replace('current','replacement')
