ui <- dashboardPage(
  dashboardHeader(title = "Convective Rain DB", titleWidth = 230),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon("home")),
      menuItem("Spatial", tabName = "spatial", icon = icon("globe")),
      menuItem("Analytics", tabName = "analytics", icon = icon("line-chart")),
      menuItem("DB Management", tabName = "manage", icon = icon("database")),
      menuItem("Help", tabName = "help", icon = icon("question")),
      menuItem("Admin", tabName = "admin", icon = icon("lock")),
      fluidPage(
        br(),
        br(),
        br(),
        br(),
        br(),
        HTML("<em> powered by: </em>"),
        br(),
        br(),
        img(src="RainPlusPlus.png",width = 200, hiegh=80))
    )
  ),
  dashboardBody(
    # Boxes need to be put in a row (or column)
    tabItems(
      # First tab content
      tabItem(tabName = "home",
              img(src="heavy_rain_transparent.png",width = 800, height=400)
              ),
      tabItem(tabName = "spatial",
              fluidRow(
                box(plotOutput("plot1", height = 250)),
                
                box(
                  title = "Controls",
                  sliderInput("slider", "Number of observations:", 1, 100, 50)
                )
              )
      ),
      
      # Second tab content
      tabItem(tabName = "analytics",
              h2("Widgets tab content")
      )
    )
  )
)