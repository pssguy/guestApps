
dashboardPage(skin="yellow",title = "Guest Apps",
             
  dashboardHeader(title = "Guest Apps"),
  dashboardSidebar(
    includeCSS("custom.css"),
    includeMarkdown("info.md"),
   # uiOutput("a"),
    hr(),
    
    
    sidebarMenu(
      id = "sbMenu",
     # menuItem("Info", tabName = "info", icon = icon("info")),
      menuItem("Pyramid Census", tabName = "piramid"),
      tags$hr(),
      menuItem(
        text = "",href = "https://mytinyshinys.shinyapps.io/dashboard",badgeLabel = "All Dashboards and Trelliscopes (14)"
      ),
      tags$hr(),
      
      tags$body(
        a(
          class = "addpad",href = "https://twitter.com/pssGuy", target = "_blank",img(src =
                                                                                        "images/twitterImage25pc.jpg")
        ),
        a(
          class = "addpad2",href = "mailto:agcur@rogers.com", img(src = "images/email25pc.jpg")
        ),
        a(
          class = "addpad2",href = "https://github.com/pssguy",target = "_blank",img(src =
                                                                                       "images/GitHub-Mark30px.png")
        ),
        a(
          href = "https://rpubs.com/pssguy",target = "_blank",img(src = "images/RPubs25px.png")
        )
      )
      
    )
    
  ),
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
    ),
    tabItems(
      tabItem(
        "piramid", 
        
        fluidRow(column(4,
                        includeMarkdown("piramid_credits.md")),
          column(8, sliderInput("yr", NULL, value = min(yrs), min = min(yrs), max = max(yrs),
                                 round = TRUE, ticks = FALSE, step = 1, width = "100%", 
                                 animate = animationOptions(interval = 1000)),
          h3("Rollover Country for information: Click for charts:  Press arrow to animate"))
        ),
        fluidRow(
          column(12, highchartOutput("hcworld")),
          column(6, highchartOutput("hcpopiramid")),
          column(6, highchartOutput("hctss"))
        ) 
        
       
              )#,
      
     # tabItem("info", includeMarkdown("info.md"))
    )#tabitems
  ) #body
) #page
