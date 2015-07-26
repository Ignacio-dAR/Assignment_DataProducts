library(shiny)

shinyServer(function(input,output) {
  Type <- reactive({
    tab <- table(c(input$Dest,input$Food,input$Clothing))
    names(tab)[which.max(tab)]
  })
  
  
  output$Result1<-renderText({
    default <- "Undefined"
    r <- list("1" = "Romantic", "2" = "Hypster", "3"="Adventurer", "4"="Penguin")[[Type()]]
    ifelse(is.null(r), default, r)
  })
  
  output$ResultExplained<-renderText({
    default <- paste(
      "You're too complex to be a Cosmo reader;",
      "are you sure you picked the right magazine?"
    )
    r <- list(
      "1" = "Love is all around you... and you love it!!",
      "2" = paste(
        "Grab your electric bike, your reflex",
        "cam and go make the world a fancier place"
      ),
      "3" = "How exactly were you able fill this test???",
      "4" = "Love to see you around again, Indy"
    )[[Type()]]
    ifelse(is.null(r), default, r)
  })
})
