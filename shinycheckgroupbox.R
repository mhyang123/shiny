library(ggplot2)
library(data.table)
library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard)  
Ui <- fluidPage(
  checkboxGroupInput("chk",label=h3("체크박스그룹 "),
                     choices =list ("선택1"=1,
                                "선택2"=2,
                                "선택3"=3
                                ),
                     selected=1
                     ),
  hr(),
  fluidRow(column(3,verbatimTextOutput("value")))
)
server <- function(input,output,session){
  output$value <- renderText({input$chk})
}

shinyApp(Ui,server)












