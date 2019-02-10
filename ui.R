library (shiny)
library(plotly)


shinyUI(fluidPage(
  
  
  titlePanel("Philippine National Railways (PNR) Passenger Traffic per Station "),
         sidebarLayout(
    sidebarPanel(
        selectInput("month","Select Month:", choices=c("January", "February","March","April","May",
                                                       "June","July","August","September","October",
                                                       "November","December"))
    ),
    
    mainPanel(
      h3("Month:"),
      textOutput("month"),
      h3("Average Passenger Traffic:"),
      textOutput("average"),
      h3("Passenger Traffic per Station"),
      plotlyOutput("plot1")

    )
  )
))