shinyServer(function(input, output) {
    
    output$text1 <- renderText(fisher.test(matrix(c(input$a,input$b,input$c,input$d),2,2,byrow=TRUE),alternative='greater')$p.value)
})