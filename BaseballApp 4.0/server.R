shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    Batting[Batting$yearID==input$year & Batting$lgID==input$league,
            c(input$xcol, input$ycol)]
  })
  
  
  output$plot1 <- renderPlot({
    plot(selectedData())
    
    })
  
  output$desc <- renderPrint({
    dataset <- selectedData()
    summary(dataset)
  })
  
  output$corr <- renderPrint({
    dataset <- selectedData()
    cor(dataset)
    })
})