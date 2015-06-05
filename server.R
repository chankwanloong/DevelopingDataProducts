# load shiny package
library(shiny)

# start shinyServer
shinyServer(
        function(input, output) {        
                x <- reactive({factorial(as.numeric(input$text1))})
                output$text1 <- renderText({input$text1})
                output$text2 <- renderText({x()})
        }
)