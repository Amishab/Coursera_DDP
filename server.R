EMIData <- read.csv("EMIData.csv")
EMIData$EMI <- round(EMIData$EMI,2)

shinyServer(
  function(input, output) {
    
    
    output$newHist <- renderPlot({
      rate <- input$APR
      P <- 10000L
      n <- 360L
      r <- (rate/100)/12
      E <- P * r * (((1+r)^n) / (((1+r)^n) -1))
      
      EMI <- round(E,2)
  
      
      plot (EMIData$Interest,type = "h", xlab='APR', ylab = "Frequency" , xlim = c(3,10),
                 col='green',main="Histogram")
      #barplot(height=EMIData$EMI, names.arg=EMIData$Interest,xlab='APR', ylab = 'EMI', 
       #      col='green',main="Barplot")
      lines( c(rate, rate), c(0, 100), col="red",lwd=5)
      text( 5,10,paste("APR = ", rate))
      text(5, 9,paste("EMI/$10000 for 30 years = ", EMI))
      
      
    })
    
  }
)
