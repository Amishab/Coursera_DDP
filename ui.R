shinyUI(pageWithSidebar(
  headerPanel("Impact on EMI with APR changes per Loan Amount of $10000 for 30 years fixed"),
  sidebarPanel(
    sliderInput('APR', 'What is your APR?',value = 5, min = 3.5, max = 10, step = 0.25)
  ),
  mainPanel(
    
    plotOutput('newHist')
    
  )
))
