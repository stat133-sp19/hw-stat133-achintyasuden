

library(shiny)
library(ggplot2)
library(reshape2)


# UI

ui <- fluidPage(
  titlePanel("Savings Simulation"),
  

  
  fluidRow(
    
    
    column(4,
           sliderInput(inputId = "initial",
                       label = "Initial Amount",
                       value = 1000, min = 1, max = 100000,
                       step = 500),
           sliderInput(inputId = "contrib",
                       label = "Annual Contribution",
                       value = 2000, min = 0, max = 50000,
                       step = 500)),
    column(4, offset = 0.5,
           sliderInput(inputId = "return",
                       label = "Return rate (%)",
                       value = 5, min = 0, max = 20,
                       step = 0.1),
           sliderInput(inputId = "growth",
                       label = "Growth Rate (%)",
                       value = 2, min = 0, max = 20,
                       step = 0.1)),
    column(4, offset = 0.5,
           sliderInput(inputId = "years",
                       label = "Years",
                       value = 10, min = 0, max = 50,
                       step = 1),
           selectInput(inputId = "facet",
                       label = "Facet?",
                       choices = c("Yes", "No"),
                       selected = "No"))
    
    
  ),
  
  h4("Timelines"),
  plotOutput(outputId = 'plot'),
  
  h4("Balances"),
  tableOutput(outputId = 'table')
  
  
)



# Server


server <- function(input, output) {
  
  
  modalities <- reactive({
    
    initial <- input$initial
    contrib <- input$contrib
    return <- input$return/100
    growth <- input$growth/100
  
    
    #functions
    
    future_value <- function(amount, rate, years) {
      fv <- amount*(1+rate)^years
      return(fv)
    }
    
    annuity <- function(contrib, rate, years) {
      annuity <- contrib * (((1+rate)^years - 1)/rate)
      return(annuity)
      
    }
    
    growing_annuity <- function(contrib, rate, growth, years) {
      gannuity <- contrib*(((1+rate)^years - (1+ growth)^years)/(rate - growth))
      
      return(gannuity)
    }
    
    
    
    #build data frame: modalities
    
    year <- 0:input$years
    no_contrib <- rep(0, length(year))
    fixed_contrib <- rep(0, length(year))
    growing_contrib <- rep(0, length(year))
    
    for (i in 1:length(year)) {
      no_contrib[i] <- future_value(amount = initial,
                                    rate = return, years = year[i]) }
    
    no_contrib
    
    for (i in 1:length(year)) {
      fixed_contrib[i] <- future_value(amount = initial,
                          rate = return, years = year[i]) + annuity(contrib = contrib,
                          rate = return, years = year[i])
    }
    
    fixed_contrib
    
    for (i in 1:length(year)) {
      growing_contrib[i] <- future_value(amount = initial, rate = return, years = year[i]) + growing_annuity(contrib = contrib, rate = return, years = year[i], growth = growth)
    }
    
    growing_contrib
    
    modalities <- data.frame(year, no_contrib, fixed_contrib, growing_contrib)
    return(modalities)
    
    modalities_melt <- melt(modalities, id.vars = c("Year"))
    
    
    
  })
  
  
  output$plot <- renderPlot({
    
    if (input$facet == "No") {
      
    ggplot(data = modalities(), aes(x = year)) + geom_line(aes(y = no_contrib, colour = '0008FF')) + geom_line(aes(y = fixed_contrib, colour = 'FF0000')) + geom_line(aes(y = growing_contrib, colour = '00FF08')) + labs(title = 'Three Modes of Investing', x = "Years", y = "Future Value in $") + scale_color_discrete(name = "Contribution Types", labels = c('None', 'Fixed', 'Growing')) + theme_gray()
    
    
      
      
    } else {
      
      ggplot(modalities_melt, aes(x = Year, y = value, col = variable)) + geom_line() + facet_grid(.~variable) + geom_point() + ggtitle("Three Modes of Investing") + geom_area(alpha = 0.4) + aes(fill = variable)
      
    }
    
  })
  
  output$table <- renderTable({
    modalities()
  })
  
}



# Run the application 
shinyApp(ui = ui, server = server)

