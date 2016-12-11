library(shiny)
shinyServer(
  function(input, output) {
    output$func<-renderText({
      input$start
      if (input$num1 >= 3) {
        paste0('Функція: ', '(' ,input$num1, '/' , '4' , ')' , '*', input$num2, '^', '2','*','tan','(' ,'pi', '/', input$num1, ')' )
        } 
      else if (input$num1 < 3 ) {
        paste0('Помилка')
      }
      })
     output$dy<- renderText({
      paste0('Площа правильного ',input$num1,'-кутника = ',
             ((input$num1/4)*input$num2^2*tan(pi/input$num1)))
})
})