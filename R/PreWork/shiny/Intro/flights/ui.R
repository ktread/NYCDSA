library(shiny)

fluidPage(
  titlePanel(("NYC Flights")),
  sidebarPanel(img(src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Blick_auf_Manhattan.JPG/640px-Blick_auf_Manhattan.JPG", 
                         width="100%"),
              selectizeInput(inputId = "origin",
                             label= "Departure Airport",
                             choices = unique(flights$origin)),
              selectizeInput(inputId = "dest",
                             label = "Arrival Airport",
                             choices = unique(flights$dest))
),
    mainPanel(
      fluidRow(
        column(6, plotOutput("count")),
        column(6, plotOutput("delay"))
      )
    )
  )

