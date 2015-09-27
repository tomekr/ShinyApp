library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Magic: The Gathering Outs Calculator"),
        sidebarPanel(
                h4('This calculator will show you how many outs you can
                   expect to find in upcoming draws given how many you have
                   seen so far, and how many are in your deck.'),
                numericInput('deck',
                             'Number of cards left in your library (1 - 100)',
                             53, min = 1, max =100, step = 1),
                numericInput('outsIn',
                             'Number of outs you have in your deck (1-40)',
                             4, min = 1, max = 40, step = 1),
                numericInput('outsSeen',
                             'Number of outs you have seen so far',
                             1, min = 1, max = 40, step = 1),
                numericInput('draws',
                             'Number of cards to draw an out',
                             1,min = 1, max = 20, step = 1),
                submitButton()
                
        ),
        mainPanel(
                h3('Is it a good bet?'),
                verbatimTextOutput("out1")
        )
        )
)