library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard) 
library(shiny)

ui <- fluidPage(
  dateRangeInput(
    "date",
    label=h3("기간설정 "),
  ),
  
  hr(),
  fluidRow(column (4,verbatimTextOutput("value")))
)



server <- function(input, output, session) {
  output$value <- renderPrint({input$date})
}

shinyApp(ui, server)
