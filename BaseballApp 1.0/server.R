
shinyServer(function(input, output, session) {
  
  #Combine the selected variables into a new data frame
  #Key command here is reactive: tells app that it will update with each selection
  selectedData <- reactive({
    Batting[, c(input$xcol, input$ycol)]
  })
  
  
  #Generates a basic plot based on the users selection
  #Key command here is renderPlot: tells app that the plot is reactive and should respond to new data
    output$plot1 <- renderPlot({
    plot(selectedData())
    
    })
  
})