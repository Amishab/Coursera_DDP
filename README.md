# Coursera_DDP
Coursera - Developing Data Products

The [Shiny](http://shiny.rstudio.com/) application on calulation of EMI for loan amount of $10,000 for 30 year fixed period based on APR input from user is at http://amishab.shinyapps.io/EMIShinyApp/

I created data in EMIData.csv for APR ranging from 3.5% to 10% based on following formula

EMI is calculated like...

E = P * r * (((1+r)^n) / (((1+r)^n) -1))

Where 
- E = EMI (Equal Monthly Instalment)
- P = principal
- r = interest rate per month
- n = number of months

The application has a slider for selecting APR, when you move the slider you will see APR and EMI printed on top left of the plot.

The Rpubs presentation is available at http://rpubs.com/Amishab/EMIShinyApp
