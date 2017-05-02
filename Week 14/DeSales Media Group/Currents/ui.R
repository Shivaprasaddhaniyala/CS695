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
      "CS695 Term Project: This section can be used as the introdution to your project"
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
     title = "Word cloud of Currents",     
      plotOutput("distPlot1")
     
    
    ),
    
   
    box(
       width = 4, 
      background = "olive",
      " 1. This diagram represents the words related to Currents which is a news program that’s aired daily night which focus on local and national events,interview
        2. Digital media Business could be developed by starting program which emphasize on entertainment with catholic point of view, which by advertising commercials will increase the revenue for the business.
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
     title = "Sentiment of Currents",     
      plotOutput("distPlot2")
      
    ) ,
    box(
      width = 4, 
      background = "olive",
      "X=score of words in the tv
Frequency=No of tweets
      Here the score differ the tweets into positive words and negitive words in the tv.
      According to the graph there are mostly positive words than the negitive words which means most of the tweets are positive than the negitive in the tv.
      There are not many complaints regarding the positive and negitive words but if they can improve more on the side of positive and formal words the company can reach great standards. 
      "
    )
  ), 

# Create network graph panel with two boxes, one for output and one for discussion    
fluidRow(
  
  box(
    width = 8, 
      title = "Network Graph of Currents",     
   plotOutput("distPlot3")
    
  ) ,
  box(
    width = 4, 
    background = "olive",
    "This result shows that Currents is the sources of local, national and international events.
     what I discover from this chart is that they are some of the links that are consisting of more than one link network attributes.
    My recommendation is  the DeSales Media Group for Currents is such important information shouldn't be limited only to NY, I think they should try to get this info else where."
  )
  ), 

# Create customer profile panel with two boxes, one for output and one for discussion    
fluidRow(
  
  box(
    width = 8, 
    title = "user profile of Currents",     
    plotOutput("distPlot4")
    
  ) ,
  box(
    width = 4, 
    background = "olive",
    "The graph shows there were 30 tweets posted by female users and 35 tweets posted by male users and 40 tweets posted by unknown users and 50 of the female users,60of the male users 80 unknown users shared it.
     The result shows a lot of unknown users are tweeting anonymously than the known users.
     So, we recommend that advertising in the right way will increase the number known users than the unknown users.  
    "
  )
), 

# Create topic analysis panel with two boxes, one for output and one for discussion    
fluidRow(
  
  box(
    width = 8, 
    title = "topic analysis of Currents",     
    plotOutput("distPlot5")
    
  ) ,
  box(
    width = 4, 
    background = "olive",
    "1. The result we find from the above Pie Chart information is the percentage of tweets on sports on NETTV live streaming which is 44% mentioned and 56% non mentioned. 
     2. While watching a sports live streaming many viewers tweet. These tweets are classified into mentioned and non mentioned tweets. If a tweet contains Twitter username or preceded by @ symbol it is a mentioned tweet. whereas a tweet without mentioning someone is a non mention tweet 
     3.	From the chart we can see how many people are reading the news on twitter what is the percentage of people following news online. From the chart we see the percentage by calculating the number of tweets to the total number of followers.
     4. With the following few recommendations like creating campaigns with twitter ads , by connecting with relevant audience by using robust targeting capabilities to present the business to right audience and by analyzing tweets to understand the followers."
  )
  ) 


)

)

