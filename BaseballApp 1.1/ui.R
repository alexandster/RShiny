#shinyUI command initiates the function for formatting the app

shinyUI(pageWithSidebar(
  titlePanel('Base stats'),
  sidebarPanel(
    p("p creates a paragraph of text."),
    p("You can place paragraphs anywhere in the app"),
    selectInput('xcol', 'X Variable', names(Batting),
                selected=names(Batting)[[7]]),
    selectInput('ycol', 'Y Variable', names(Batting),
                selected=names(Batting)[[8]]),
    p("You can create:",
      br(),#creates line break
      strong("bold text"),
      br(),
      em("italicized text"),
      br(),
      span("colored text",style="color:green")#here the command 'span' is passing the font onto the whole phrase
      )
  ),
  mainPanel(
    h1("First level title"),
    h2("Second level title",align ="left"),
    h3("Third level title",align="center"),
    h4("Fourth level title",align="right"),
    h5("Fifth level title."),
    h6("Sixth level title"),
    plotOutput('plot1'),
    p("I don't know whether", 
       a("the Donald",href="https://en.wikipedia.org/wiki/Donald_Trump"), 
       "likes baseball..."),
    div(img(src = "DT.jpg", height = 300, width = 300), style="text-align: center;")
    )
))
