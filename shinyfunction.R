library(shinyjs)
library(shiny)
gender <- function(x){
  t <-substr(x,8,8)
  cat('\n ssn에서 추출한 값 ',t)
  y <- switch(t,
         '1'='남성',
         '2'='여성 ',
         '3'='남성',
         '4'='여성 ',
         '5'='외국인 ',
         '6'='외국인 ',
         '잘못됝 값 '
         )
  cat('\n 결과 :',y )
  return(y)
}

ui <- fluidPage(
  useShinyjs(),
  textInput("txt",
            label=h3("주민번호앞자리 입력"),
            value="(예시)900101-2"),
  actionButton("btn","확인")
)
server <- function(input, output, session) {
  onclick("btn",
          info({gender(input$txt)}))
  # output$value <- renderText({gender(input$txt)}) 
  #성별을 체크하는 함수 코딩
  
}

shinyApp(ui, server)

