library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard) 
library(shiny)

ui <- fluidPage(
  actionButton("action",
               label="액션버튼 "
               ),
  hr(),
  verbatimTextOutput("value")
)

server <- function(input, output, session) {
 output$value=renderText({input$action}) 
}

shinyApp(ui, server)

