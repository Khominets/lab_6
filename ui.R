library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Обчислення площі правильного n-кутника"),
  sidebarPanel(
    h3('Введіть значення'),
    numericInput("num1", label = h5("Число сторін"), value = 4),
    numericInput("num2", label = h5("Довжина сторони"), value = 3),
    
    actionButton("start", "обрахувати")
  ),
  mainPanel(
    h3('Обчислення'),
    textOutput("func"),
    textOutput("dy")
    )
    )
  )
