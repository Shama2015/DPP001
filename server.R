#library(shiny)
library(ISLR)


# Define server logic 
library(shiny)
library(ggplot2)
library(ISLR)
library(caret)


              
shinyServer <- function(input, output) {
  output$plot <- renderPlot({
   if (input$radio == 1) {
      ggplot(Auto, aes(displacement, mpg)) + geom_point(color = Auto$cylinders) +
       geom_smooth(method="lm", col="steelblue") +
       labs(title = "mpg Vs. displacement, data = Auto(ISLR)")
             } else if (input$radio == 2) {
                ggplot(Auto, aes(horsepower, mpg)) + 
                 geom_point(color= Auto$cylinders) +
                 geom_smooth(method="lm", col="steelblue") +
                 labs(title = "mpg Vs. horsepower, data = Auto(ISLR)")
               } else if (input$radio == 3) {
                 ggplot(Auto, aes(weight, mpg)) + geom_point(color = Auto$cylinders) +
                   geom_smooth(method="lm", col="steelblue") +
                   labs(title = "mpg Vs. weight, data = Auto(ISLR)")
                 } else if (input$radio == 4) {
                   ggplot(Auto, aes(acceleration, mpg)) + geom_point(color = Auto$cylinders) +
                 geom_smooth(method="lm", col="steelblue") +
                 labs(title = "mpg Vs. acceleration, data = Auto(ISLR)")
                 } else if (input$radio == 5){
                   par(mfrow = c(1, 4), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
                   with(Auto, {
                     # here three plots are filled in with their respective titles
                     
                     plot(displacement, mpg, main = "mpg Vs. displacement", col=cylinders)
                     plot(horsepower, mpg, main = "mpg vs. horsepower", col=cylinders)
                     plot(weight, mpg, main = "mpg vs. weight", col=cylinders)
                     plot(acceleration, mpg, main = "mpg vs. acceleration", col=cylinders)
                     # this adds a line of text in the outer margin*
                     mtext("mpg from Auto in ISLR pacakge", outer = TRUE)}
                   )
                   #featurePlot(x=Auto[,c("displacement","horsepower","weight", "acceleration")], 
                    #           y = Auto$mpg,plot="pairs")
               }
  })
}