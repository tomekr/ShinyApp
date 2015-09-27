library(shiny)
shinyServer(
        function(input,output){
                output$out1 <- renderPrint(oddsCalc(input$outsIn,
                                                    input$outsSeen,
                                                    input$deck,
                                                    input$draws))
        }
)

oddsCalc <- function(outsIn, outsSeen, total, x){
        o <- outsIn - outsSeen
        p <- 1
        cards <- x - 1
        for(i in 0:cards){
                p <- p*(total-o-i)/(total-i)
        }
        if(outsIn<=outsSeen){
                "0%"}else
        {paste(round(100*(1-p), 1), "%", sep="")}
}