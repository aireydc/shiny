# ui.R

shinyUI(fluidPage(
    titlePanel("Gene set enrichment test"),
    sidebarLayout(
        sidebarPanel(
            numericInput("a", label="Genes expressed & in set", 17),
            numericInput("b", label="Genes not expressed & in set", 181),
            numericInput("c", label="Genes expressed & not in set", 449),
            numericInput("d", label="Genes not expressed & not in set", 19551)
        ),
        mainPanel(
            h3("Results"),
            h4("Enter data in fields to the left."),
            h4("A p-value based upon Fisher's Exact Test is updated below."),
            verbatimTextOutput("text1")
        )
    )
))

