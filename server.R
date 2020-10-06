if (!("pacman" %in% rownames(installed.packages()))) {install.packages("pacman")}
pacman::p_load(shiny,
               DT)
sverigesdistrikt <- readRDS("sverigesdistrikt.RDS")

shinyServer(function(input, output, session) {
  observe({
    output$table <- renderDataTable({DT::datatable(
      sverigesdistrikt, rownames = FALSE, 
      filter = 'top', extensions = c('Buttons', 'Scroller'),
      options = list(scrollY = 650,
                     scrollX = 500,
                     deferRender = TRUE,
                     scroller = TRUE,
                     buttons = list('excel', "csv"),
                     dom = 'lBfrtip',
                     fixedColumns = TRUE))}
    )})
  
})
