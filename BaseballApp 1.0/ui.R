#shinyUI command initiates the function for formatting the app

shinyUI(pageWithSidebar(
  titlePanel('Base stats'),
  sidebarPanel(
    p("Select two baseball statistics below to see the figure update in ", strong("real time")),
    selectInput('xcol', 'X Variable', names(Batting),
                selected=names(Batting)[[7]]),
    selectInput('ycol', 'Y Variable', names(Batting),
                selected=names(Batting)[[8]]),
    p("For more information about hitting statistics: ", col ="red",
      a("click here",href="https://en.wikipedia.org/wiki/Donald_Trump"))
  ),
  mainPanel(
    plotOutput('plot1'),
    p(a("MLS Data",href="https://en.wikipedia.org/wiki/Donald_Trump"),
    div(img(src = "logo.png", height = 300, width = 300), style="text-align: center;")
  )
  )
))