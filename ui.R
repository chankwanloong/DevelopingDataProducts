# load shiny package
library(shiny)

# begin shiny UI
shinyUI(pageWithSidebar(
        headerPanel("Calculate product of all positive integers up to input integer"),
        sidebarPanel(
                textInput(inputId = "text1", label = "Input positive integer", value = "1"),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Results of calculation'),
                h4('You entered'),
                verbatimTextOutput("text1"),
                h4('Which resulted in a product of '),
                verbatimTextOutput("text2"),
                h3('Documentation'),
                p('This Shiny application calculates the product of all the positive integers up to the user\'s input.'),
                p('1. Enter a positive integer in the text box labelled with \"Input positive integer\".'),
                p('2. Click on the Submit button.'),
                p('3. The input integer and the result of the calculation will be displayed on the main panel.')
        )
))