shinyUI(pageWithSidebar(
  headerPanel("Cosmo Test"),
  sidebarPanel(
    radioButtons(inputId="Dest", label="1. Favorite Holidays Destination:", selected=3,
                 choices=c("Rome" = 1, "New York" = 2, "Gaborone" = 3, "Arctic Pole" = 4)),
    radioButtons(inputId="Food", label="2. Favorite Food/Meal:", selected=4,
                 choices=c("Strawberry Pie" = 1, "Fish & Chips" = 2, "Snake B-B-Q" = 3, "sashimi" = 4)),
    radioButtons(inputId="Clothing", label="Favorite Clothing Style:", selected=2,
                 choices=c("Comfy" = 1, "Stylish" = 2, "Practical" = 3, "Clothing?" = 4)),
    submitButton("Submit")
    ),
  
  mainPanel(
    h3("Cosmo Results"),
    h4("Based on your answers, you are a..."),
    verbatimTextOutput("Result1"),
    verbatimTextOutput("ResultExplained")
      )
  
))

