  # NLP Jumpstart
  
  * You can convert your empty strings with na 
    * choosing to do this depends on what you're trying to do
  * "Stopwords"
    * a list of words in a language that don't add value; high frequency 
  ## Libraries
    * Pandas
    * nltk
      * from nltk.corupus import stopwords
      * nltk.download('punkt')
      * from nltk.tokenize import word_tokenize 
    * wordcloud 
    * Gensim
    * Spacy
  
  
  ## Text Processing
  * Before we start using machine learning methods on our text, there are some steps that we first want to perform so that our text is in a format that our model can interpret.
    * These steps include:
      * Filtering
        * The first step is to remove punctuation, as it doesn’t add any extra information while treating text data. Therefore removing all instances of it will help us reduce the size of the training data.
        * When examining a text, often there are words used within a sentence that holds no meaning for various data mining operations such as topic modeling or word frequency. 
       * Tokenization  
          * The act of splitting text into a sequence of words.
      * Stemming
        * Linguistic study
  
        * Tries to identify words and trip them, ie it tries to find the stem of the word
        * hard to look up text afterwards 
        * Porter stemmer (older and traditional)
          *  [Porter Stemming Algorithm](https://tartarus.org/martin/PorterStemmer/)
        * Lancaster Stemmer (a more agressive and modern stemmer)
          * [NLTK Lancaster Stemmer - API & Demo \\| Text Analysis Online | TextAnalysis](http://textanalysisonline.com/nltk-lancaster-stemmer)
      * Lemmitization
        * Takes stemming to the next level 
        * Finds the stem and attempts to return the best word returned
        * Can be VERY SLOW
  
  ### N-Grams
  * instead of just using a single word you take a range
  * Adds context for the analysis 
  * You can create windows
  
  
  ## Sentiment Analysis
    * Very comlicated and a field of it's own study
    * [Tutorial: Quickstart — TextBlob 0.15.2 documentation](https://textblob.readthedocs.io/en/dev/quickstart.html#sentiment-analysis)
    * limited by whatever text it's trained on 
      * medical data vs twitter date
      * the nature of the text is 
      * scores based on the text it was trained on not based on your text
    * We want to apply the function to the text column of the dataframe and generate two new columns called polarity and subjectivity. The process will take a long time so we will apply it to a sample of dataset.
      * Polarity refers to the emotions expressed in the text.
      * Subjectivity is a measure of how subjective vs objective the text is.
