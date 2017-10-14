##Urine Analysis
library(boot);library(shiny)
urinea<-urine[,c(4,5)]
urinea<-urinea[order(urinea$osmo),]

function(input, output) {
        output$urinePlot <- renderPlot({
                plot(urinea, type=input$plotType)
        })
        
}