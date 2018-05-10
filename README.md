# Health_SocialMedia
Global Health Social Media Text Analytics

Objective: 
This project is designed to find global health hot topics from social media and analyze their trends for better understanding on people’s cognition and attitudes towards health problems. To make the research feasible, we focused on the twitter text and articles in CNN health channel related to “diabetes” as our concentration for this project. 

Methodology:
●	Hypothese: 
○	There are patterns in diabetes such as patients’ symptom, machine using of patients, newly improvement for treating diabetes, etc. will be found in analysis of social media text data.
○	There is natural clustering among all the text that extracted from social media.
○	The clusters generated from this study are able to help with the treatment on patients.
●	Data description:
○	Data Resource: Twitter, New York Times.com, CNN.news, Fox.news.
○	Data Preparation: 263117 tweets are extracted from Twitter on a weekly basis                     using Python and R. 30 articles are extracted from New York Times.com, CNN.news- Health.com, Fox.news.com served as supplements and improvement about diabetes data.
●	Data analytics tool:
○	Analytics Tool: Python, R
○	Visualization Tool: Tableau

Data Processing:

Data cleaning:
First, the twitter texts are extracted using R; the parameters that set from the extracting R codes include: text, favorited count, created, TwitterID, screenName, retweetCount, isRetweeted from February 2017. The twitter texts are extracted on a weekly basis and this is an ongoing process. Next, the twitter texts are cleaned. The data cleaning is a step-by-step process. The first step is tokenization. Next, stop words such as ‘a’, ‘but’ are removed. Finally, all the words in the texts are stemmed into its simplest forms. The NLTK package in Python is used.

The newspaper data are extracted using Python. The algorithm is to extract URL of each articles in the health part of different news websites and generated the text from the URL. After data is gathered, the same steps as cleaning tweeter data are conducted.

Descriptive analysis:
The word cloud and word link is used to find out the correlation between words and phrase. The frequency of number of twitter in time series is calculated to find out whether our extraction of data is in a balancing situation, to avoid the influence of  sudden high reach and drop.


Twitter Text analytics:
The newspaper data is analyzed by K-means clustering analysis. After tokenization, stop-words removal and stemming, clustering was conducted with sklearn Python package. The place of each scatter of the chart was calculated by distance, which is defined as 1 - cosine similarity of each document.

Future improvement and research:
The type of diseases should be expanded to gain a whole picture of public opinions and ideas about the global health from social media. More resources of social media should be included into consideration to cover multiple social media users’ ideas and opinions. As the extracted text data grow large, the data should be stored and structured to database. Dynamic dashboard can be connected to the database and show the real -time visualization when data go to live.


