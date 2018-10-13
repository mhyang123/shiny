library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard) 
library(shiny)

ui <- fluidPage(
  fileInput(
    "file",
    label=h3("파일업로드 ")
  ),
  
  hr(),
  fluidRow(column (4,verbatimTextOutput("value")))
)



server <- function(input, output, session) {
  output$value <- renderPrint({str(input$file)})
}

shinyApp(ui, server)
