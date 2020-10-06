if (!("pacman" %in% rownames(installed.packages()))) {install.packages("pacman")}
pacman::p_load(shiny, DT, shinydashboard)

dashboardPage(
  dashboardHeader(title = "Sveriges Distrikt", titleWidth = 310),
  dashboardSidebar(disable = TRUE),
  dashboardBody(DTOutput("table")))