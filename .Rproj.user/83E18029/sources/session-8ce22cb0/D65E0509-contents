# Script para instalar pacotes R necessários para a aplicação Shiny

# Lista de pacotes necessários
packages <- c(
  "shiny",
  "shinydashboard", 
  "DT",
  "plotly",
  "dplyr",
  "ggplot2",
  "shinythemes",
  "shinyWidgets"
)

# Instalar pacotes que não estão instalados
for (pkg in packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE, repos = "https://cran.rstudio.com/")
    library(pkg, character.only = TRUE)
  }
}

cat("Todos os pacotes foram instalados com sucesso!\n")

