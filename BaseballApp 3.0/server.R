shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    Batting[, c(input$xcol, input$ycol)]
  })
  
  
  
  output$plot1 <- renderPlot({
    plot(selectedData())
    
    })
  
})