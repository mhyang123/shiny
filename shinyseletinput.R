library(ggplot2)
library(data.table)
library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard)  
Ui <- fluidPage(
  selectInput("select",
              label=h3("셀렉트 박스  "),
                choices=list(
                  "선택1"=1,
                  "선택2"=2,
                  "선택3"=3 
                  ),
selected=1),
                

  hr(),
  fluidRow(column(3,verbatimTextOutput("value")))
)
server <- function(input,output,session){
  output$value <- renderText({input$select})
}

shinyApp(Ui,server)

