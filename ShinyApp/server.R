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
  
      plot (EMIData$Interest,EMIData$EMI,type = "h", xlab='APR', ylab = "EMI" , xlim = c(3,10),
            ylim =c(20,100), col='blue',main="EMI Chart")
      
      lines( c(rate, rate), c(0, 100), col="red",lwd=5)
      text(5, 100, paste("APR = ", rate), pos=2)
      text(5, 90,paste("EMI/$10000 for 30 years = ", EMI))
      
      
    })
    
  }
)
