
library(shiny)
library(plotly)

dataset<-read.csv("pnr_monthlypassengersperstation2017.csv", sep=",", header=T)

shinyServer(function(input,output){
  
  output$month <- renderText(input$month)
  

  output$average <- renderPrint({
    mean(dataset[[input$month]])
  })
  
  output$plot1 <- renderPlotly({
    
   plot_ly(data=dataset, x=dataset$Station, y=dataset[[input$month]],  type="bar") %>% 
      layout(title="Passenger Traffic" , xaxis=list(title="Station"), yaxis=list(title="Number of Passengers"))
  })

  
})
