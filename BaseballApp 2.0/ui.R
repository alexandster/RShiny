shinyUI(pageWithSidebar(
  titlePanel(title="",windowTitle="My Lil' Basebabll App!"),
  sidebarPanel(
    p("Select two baseball statistics below to see the figure update in",
      strong("real time."),
    selectInput('xcol', 'X Variable', names(Batting),
    selected=names(Batting)[[7]]),
    selectInput('ycol', 'Y Variable', names(Batting),
    selected=names(Batting)[[8]])
      ),
    p(span("For more information about hitting statistics:",style="color:red"),
      a("click here.",href="https://en.wikipedia.org/wiki/Baseball_statistics#Batting_statistics"))
      ),
  mainPanel(
    h1("Interactive Baseball Hitting Stats", align="center"),
    plotOutput('plot1'),
    div(img(src = "MLB.jpg", height = 150, width = 200), style="text-align: right;"),
    a("Major League Baseball Data",href="http://www.inside-r.org/packages/cran/plyr/docs/baseball")
    )
))