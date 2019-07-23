  # Pandas Old
  
  Old Notes
  _____
  ## Series
  * Can use index multiple times
    * more like a key - sort of like a dict but the keys must be the same type and they do not need to be unique 
    * multiple keys allows for filtering
  
  ## DataFrame
    * pd.DataFrame()
    * axis = 1 columns
    * axis = 0 rows
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
  * pd.read_csv('name',index_col=0) col=0 to specifiy index instead of a numbered default that pandas gives it; can provide string name or column index to specifiy
    * optional names = '' to add column names to the data
  * df.to_csv()
  
  
  ## Data Manipulation
  * pd.concat() [like SQL union]
    * axis = 1 - add columns from different dataframes
      * explanding along the column indicies 
    * axis = 0 
      * combine two data frames with same number of columns vertically
  * join (arguement in concat) (axis=1)
    * inner, outer, left, right
  * sort_values('column',[ascending=True/False])
  * merge() [like joins]
    * most common ways to bring dfs together
    * [how] inner, outer
    * [on] column name
    * left_on, right_on
  * Fancy indexing like NumPy
    * df1.loc[df1.a==0,:] 
    * filtering in place
  * .loc(row,column)
  * need loc to filter columns
  * can map to a single column 
    * df.a.map(lambda x: xn) (a is the column in this case)
  
  ### Missing Data
    * Discard it
      * .dropna(axis,how=[any,all])
    * Interpolate
      * fillna()
        * df['column'].fillna(df['column'].mean())
      * df.interpolate(method=) 
        * linear, 
    * Isolate and analyze separately
  
  * .isnull()
  * np.sum(df.isnull())
    * gives the total number of missing values in each of the column
    * change axis to 1 if you want to use rows
  * to isolate the rwos in which there are null values use .any/.all
    * var = df.isnull().any(axis=1/0)
    * you can then use df.loc[var,:] to get back the rows with missing data
    * ~ represents not (so ony get data that doesn't have missing data)
  * Can specify what is a missing vale
    * pd.read_csv(file, na_values=[value, value, etc])
  
  
