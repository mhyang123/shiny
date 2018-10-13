library(ggplot2)
library(data.table)
library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard)  
Ui <- fluidPage(
  checkboxInput("chk",label=h3("선택  "),
                     value=TRUE
                     
  ),
  hr(),
  fluidRow(column(3,verbatimTextOutput("value")))
)
server <- function(input,output,session){
  output$value <- renderText({input$chk})
}

shinyApp(Ui,server)
