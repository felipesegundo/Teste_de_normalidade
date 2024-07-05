library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(DT)

# Carregando o dataset mtcars
data(mtcars)

# Identificando as classes das variáveis
str(mtcars)

# Transformando as variáveis
mtcars_traduzido <- mtcars %>%
  mutate(
    `Deslocamento` = as.numeric(disp),
    `Potência` = as.numeric(hp),
    `Peso` = as.numeric(wt)
  )

# UI
ui <- fluidPage(
  titlePanel("Análise de Dados mtcars"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Selecione a variável:", 
                  choices = names(mtcars_traduzido), 
                  selected = "Milhas por Galão")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Gráficos Interativos",
                 plotlyOutput("histPlot"),
                 plotlyOutput("qqPlot"),
                 verbatimTextOutput("shapiroTest")),
        tabPanel("Tabela mtcars",
                 DTOutput("mtcarsTable")),
        tabPanel("Descrição dos Dados",
                 tags$div(
                   tags$h3("Descrição do Dataset mtcars"),
                   tags$p("O dataset mtcars contém dados sobre diferentes características de 32 veículos."),
                   tags$p("As variáveis incluem informações como milhas por galão, cilindros, potência, peso, entre outras."),
                   tags$p("Este conjunto de dados é frequentemente utilizado para demonstrar técnicas de análise e visualização de dados.")
                 )
        )
      )
    )
  )
)

# Server
server <- function(input, output) {
  
  output$histPlot <- renderPlotly({
    p <- ggplot(mtcars_traduzido, aes_string(x = input$variable)) +
      geom_histogram(binwidth = 1, fill = "#0072B2", color = "#FFFFFF") +
      theme_minimal() +
      ggtitle(paste("Histograma de", input$variable)) +
      xlab(input$variable) +
      ylab("Frequência")
    
    ggplotly(p)
  })
  
  output$qqPlot <- renderPlotly({
    p <- ggplot(mtcars_traduzido, aes_string(sample = input$variable)) +
      stat_qq(color = "#0072B2") +
      stat_qq_line(color = "#D55E00") +
      theme_minimal() +
      ggtitle(paste("Q-Q Plot de", input$variable)) +
      xlab("Quantis Teóricos") +
      ylab("Quantis Observados")
    
    ggplotly(p)
  })
  
  output$shapiroTest <- renderPrint({
    result <- shapiro.test(as.numeric(mtcars_traduzido[[input$variable]]))
    cat("\n")
    cat("Resultado do Teste de Shapiro-Wilk\n")
    cat("=================================\n")
    print(result)
  })
  
  output$mtcarsTable <- renderDT({
    datatable(mtcars_traduzido, options = list(pageLength = 10, autoWidth = TRUE))
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
