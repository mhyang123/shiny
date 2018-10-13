library(dplyr)
library(shiny)
library(shinyjs)
library(shinydashboard) 
library(shiny)

ui <- fluidPage(
  useShinyjs(),
  actionButton("btn",
               "클릭 "
  )
  )

server <- function(input, output, session) {
  onclick("btn",info(date()))
}

shinyApp(ui, server)

