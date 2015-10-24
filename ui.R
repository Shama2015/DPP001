library(shiny)
#ui.R

shinyUI(
  fluidPage(
    titlePanel("Plot Milage"),
    sidebarLayout(
      sidebarPanel(
      
      p("ISLR package has the dataset 'Auto' which has some features of motor car models.
        This app Plots Auto$mpg against the user chosen ", em("Predictor"), " categorized by the number of cylinders"),
      
      br(),
      br(),
      br(),

      p("Pick a predictor to Plot Miles Per Gallon (mpg) against the Predictor"),
      br(),
      radioButtons("radio", label = h3("Predictor"),
                   choices = list("displacement" = 1, "horsepower" = 2,
                                  "weight" = 3, "acceleration" = 4, "all pairs" = 5),
                   selected = 1)), 
      br()
    ),
      
    mainPanel(
      plotOutput("plot")
      )
  )
)

    

   

      
    
  


