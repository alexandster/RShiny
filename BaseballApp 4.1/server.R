library(ggplot2)

shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    Batting[Batting$yearID==input$year & Batting$lgID==input$league,
            c(input$xcol, input$ycol)]
  })
  
  
  output$plot1 <- renderPlot({
    p<-ggplot(selectedData(), aes_string(x=input$xcol, y=input$ycol))+geom_point()
    
    if (input$stat)
      p <- p + stat_smooth(method="lm",formula=y~x,size=1)
    
    if (input$smooth)
      p <- p + geom_smooth()
    
    print(p)
    })
  
  output$dblclick_info <- renderText({
    paste0("x=", input$plot_dblclick$x, "\ny=", input$plot_dblclick$y)
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