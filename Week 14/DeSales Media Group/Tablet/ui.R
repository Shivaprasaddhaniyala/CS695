# This is the user-interface scriptn of your Shiny web application. 
# Find out more about building applications with Shiny here:
#    http://shiny.rstudio.com/
#

# Create a dashboard page

dashboardPage(
  
  dashboardHeader(title = "Row layout"),
   dashboardSidebar(),
  dashboardBody(

# Create text panel
  fluidRow(
        box(
      # width = 4, 
      background = "olive",
      "CS695 Term Project: We are currently working on DeSales Media Group. We mainly focused on Currents and Tablet. Desales Media Group is the first Catholic daily news program in the country, which is featuring local, national and international events and interviews. "
    )
  ),
  
# Create word cloud panel with three boxes, one for input and one for output and one for discussion 
  fluidRow(
    
     box(
       width = 4,
        title = "Select number of words to show on the graph ",
      sliderInput("bins",
                  "Number of words:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    box(
      width = 4,
     title = "Word cloud of Tablet",     
      plotOutput("distPlot1")
    
    ),
    
    box(
       width = 4, 
      background = "olive",
      "1. This word cloud  Diagram  shows the different functions of  Desales media Group like its daily, weekly publications on national and international news from catholic bishop of Brooklyn.
       2. This business house has been performing well in different areas since its inception in early 1900’s
       3. I would recommend them to expand their presence from different parts of  new york to different states in America , suggest them for tie-up with media giants like CNN,BBC etc to extend their presence overseas. 
      "
      
      
    )
 
     ),

# Create sentiment analysis panel with two boxes, one for input and one for output and one for discussion    
  fluidRow(
    box(
      width = 4, 
      title = "Select number of bars to show on the graph ",
      sliderInput("bins2",
                  "Number of bars:",
                  min = 1,
                  max = 50,
                  value = 30)
      
    ),
    
    box(
      width = 4, 
     title = "Sentiment of Tablet",     
      plotOutput("distPlot2")
      
    ) ,
    box(
      width = 4, 
      background = "olive",
      "X=score of words in the newspaper
Frequency=No of tweets
      Here the score differ the tweets into positive words and negitive words in the newspaper.
      Acording to the graph there are mostly positive words than the negitive words which means most of the tweets are postive than the negitive.
      There are not many complaints regarding the positive and negitive words but if they can improve more on the side of positive wordsand formal words the company can reach great standards.
      "
    )
  ), 

# Create network graph panel with two boxes, one for output and one for discussion    
fluidRow(
  
  box(
    width = 8, 
      title = "Network Graph of Tablet",     
   plotOutput("distPlot3")
    
  ) ,
  box(
    width = 4, 
    background = "olive",
    "This network graph shows that Tablet Newspaper at the center which is the key of getting the news to the people of the Catholic Church. From this graph we can tell that the most important news are closer to the center.
    The Tablet newspaper try to get all sorts of news the Catholic society as a way of keeping them inform.
    My recommendation for Desales Media Group for the Tablet is how can they assure that people are getting all the information"
  )
  ), 

# Create customer profile panel with two boxes, one for output and one for discussion    
fluidRow(
  
  box(
    width = 8, 
    title = "user profile of Tablet",     
    plotOutput("distPlot4")
    
  ) ,
  box(
    width = 4, 
    background = "olive",
    "The graph shows that there were 30 tweets posted by the female and male users and there were 50 tweets posted by the unknown users and 90 of the female users 140 of the male users 100 unknown users shared the tweets.
     The results show that there are more tweets are posted by the unknown users than the known users.
     So, we recommend providing some sort of advertising to turn the unknown users into known users which could be useful.
    "
  )
), 

# Create topic analysis panel with two boxes, one for output and one for discussion    
fluidRow(
  
  box(
    width = 8, 
    title = "topic analysis of Tablet",     
    plotOutput("distPlot5")
    
  ) ,
  box(
    width = 4, 
    background = "olive",
    "1.	The result we find from the above information is the percentage of tweets on sports which is 45% mentioned and 55% non-mentioned.
     2.	During a sports event many users tweet. These tweets are classified into mentioned and non-mentioned tweets. If a tweet contains Twitter username or preceded by @ symbol it is a mentioned tweet. Whereas a tweet without mentioning someone is a non-mention tweet.
     3.	From the chart we can see how many people are reading the news on twitter what is the percentage of people following news online. From the chart we see the percentage by calculating the number of tweets to the total number of followers.
     4.	With the following few recommendations like creating campaigns with twitter ads , by connecting with relevant audience by using robust targeting capabilities to present the business to right audience and by analyzing tweets to understand the followers."
  )
  ) 


)

)

