# Aplicação R Shiny para visualização do CV - Anísio Almiro Bule
# Versões em Português e Inglês

# Carregar bibliotecas necessárias

packages <- c("shiny", "DT", "plotly", "dplyr", "ggplot2")

# Instalar pacotes que não estão instalados
installed <- packages %in% installed.packages()
if (any(!installed)) {
  install.packages(packages[!installed], repos = "https://cloud.r-project.org")
}

# Carregar os pacotes
lapply(packages, library, character.only = TRUE)


library(shiny)
library(DT)
library(plotly)
library(dplyr)
library(ggplot2)



# Carregar dados do CV
if (!file.exists("cv_data.R")) stop("Arquivo cv_data.R não encontrado.")
source("cv_data.R")

# Interface do usuário (UI)
ui <- fluidPage(
  # CSS personalizado
  tags$head(
    tags$style(HTML("
      .main-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 30px;
        margin-bottom: 30px;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      }
      .section-header {
        background: #f8f9fa;
        padding: 15px;
        margin: 20px 0 10px 0;
        border-left: 4px solid #667eea;
        border-radius: 5px;
      }
      .info-card {
        background: white;
        padding: 20px;
        margin: 10px 0;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        border: 1px solid #e9ecef;
      }
      .skill-tag {
        display: inline-block;
        background: #667eea;
        color: white;
        padding: 5px 10px;
        margin: 3px;
        border-radius: 15px;
        font-size: 12px;
      }
      .language-selector {
        position: fixed;
        top: 20px;
        right: 20px;
        z-index: 1000;
      }
      body {
        background-color: #f5f6fa;
      }
    "))
  ),
  
  # Seletor de idioma
  div(class = "language-selector",
    selectInput("language", 
                label = NULL,
                choices = list("Português" = "pt", "English" = "en"),
                selected = "pt",
                width = "120px")
  ),
  
  # Cabeçalho principal
  div(class = "main-header",
    h1(textOutput("page_title"), style = "margin: 0; font-size: 2.5em;"),
    br(),
    h3(textOutput("name"), style = "margin: 0; font-weight: 300;")
  ),
  
  # Layout principal
  fluidRow(
    # Coluna esquerda - Informações pessoais e contato
    column(4,
      div(class = "section-header",
        h3(textOutput("personal_info_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        htmlOutput("personal_info_content")
      ),
      
      div(class = "section-header",
        h3(textOutput("languages_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        htmlOutput("languages_content")
      ),
      
      div(class = "section-header",
        h3(textOutput("references_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        htmlOutput("references_content")
      )
    ),
    
    # Coluna direita - Conteúdo principal
    column(8,
      # Resumo profissional
      div(class = "section-header",
        h3(textOutput("summary_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        htmlOutput("summary_content")
      ),
      
      # Experiência profissional
      div(class = "section-header",
        h3(textOutput("experience_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        DT::dataTableOutput("experience_table")
      ),
      
      # Formação acadêmica
      div(class = "section-header",
        h3(textOutput("education_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        DT::dataTableOutput("education_table")
      ),
      
      # Habilidades técnicas
      div(class = "section-header",
        h3(textOutput("skills_title"), style = "margin: 0;")
      ),
      div(class = "info-card",
        htmlOutput("skills_content")
      )
    )
  )
)

# Servidor
server <- function(input, output, session) {
  
  # Função reativa para obter dados baseados no idioma selecionado
  get_data <- reactive({
    lang <- input$language
    list(
      personal = personal_info[[lang]],
      summary = professional_summary[[lang]],
      experience = work_experience[[lang]],
      education = education[[lang]],
      skills = technical_skills[[lang]],
      languages = languages[[lang]],
      references = references[[lang]],
      labels = ui_labels[[lang]]
    )
  })
  
  # Títulos dinâmicos
  output$page_title <- renderText({
    get_data()$labels$title
  })
  
  output$name <- renderText({
    get_data()$personal$nome
  })
  
  output$personal_info_title <- renderText({
    get_data()$labels$personal_info
  })
  
  output$summary_title <- renderText({
    get_data()$labels$professional_summary
  })
  
  output$experience_title <- renderText({
    get_data()$labels$work_experience
  })
  
  output$education_title <- renderText({
    get_data()$labels$education
  })
  
  output$skills_title <- renderText({
    get_data()$labels$technical_skills
  })
  
  output$languages_title <- renderText({
    get_data()$labels$languages
  })
  
  output$references_title <- renderText({
    get_data()$labels$references
  })
  
  # Conteúdo das informações pessoais
  output$personal_info_content <- renderUI({
    data <- get_data()
    labels <- data$labels
    personal <- data$personal
    
    HTML(paste(
      "<p><strong>", labels$address, ":</strong><br>", personal$endereco, "</p>",
      "<p><strong>", labels$phone, ":</strong> ", personal$telefone, "<br>",
      "<strong>", labels$mobile, ":</strong> ", personal$celular, "</p>",
      "<p><strong>", labels$birth_date, ":</strong> ", personal$nascimento, "</p>",
      "<p><strong>Email:</strong><br>", personal$email1, "<br>", personal$email2, "</p>",
      "<p><strong>ID:</strong> ", personal$id, "</p>"
    ))
  })
  
  # Conteúdo do resumo profissional
  output$summary_content <- renderUI({
    summary_items <- get_data()$summary
    HTML(paste("<ul>", paste("<li>", summary_items, "</li>", collapse = ""), "</ul>"))
  })
  
  # Tabela de experiência profissional
  output$experience_table <- DT::renderDataTable({
    data <- get_data()
    exp_data <- data$experience
    labels <- data$labels
    
    # Renomear colunas
    colnames(exp_data) <- c(labels$period, labels$position, labels$company, labels$responsibilities)
    
    DT::datatable(exp_data,
                  options = list(
                    pageLength = 10,
                    scrollX = TRUE,
                    columnDefs = list(
                      list(width = '15%', targets = 0),
                      list(width = '20%', targets = 1),
                      list(width = '20%', targets = 2),
                      list(width = '45%', targets = 3)
                    )
                  ),
                  rownames = FALSE,
                  escape = FALSE)
  })
  
  # Tabela de formação acadêmica
  output$education_table <- DT::renderDataTable({
    data <- get_data()
    edu_data <- data$education
    labels <- data$labels
    
    # Renomear colunas
    colnames(edu_data) <- c(labels$year, labels$degree, labels$institution, labels$notes)
    
    DT::datatable(edu_data,
                  options = list(
                    pageLength = 10,
                    scrollX = TRUE
                  ),
                  rownames = FALSE,
                  escape = FALSE)
  })
  
  # Conteúdo das habilidades técnicas
  output$skills_content <- renderUI({
    data <- get_data()
    skills <- data$skills
    labels <- data$labels
    
    create_skill_section <- function(title, skill_list) {
      tags <- paste(sapply(skill_list, function(x) paste0('<span class="skill-tag">', x, '</span>')), collapse = " ")
      paste0("<h5>", title, "</h5><div>", tags, "</div><br>")
    }
    
    HTML(paste(
      create_skill_section(labels$microsoft_tools, skills$microsoft),
      create_skill_section(labels$databases, skills$database),
      create_skill_section(labels$data_analysis, skills$data_tools),
      create_skill_section(labels$data_collection_tools, skills$data_collection),
      create_skill_section(labels$programming_languages, skills$programming),
      create_skill_section(labels$frameworks_tools, skills$frameworks),
      create_skill_section(labels$operating_systems, skills$operating_systems),
      create_skill_section(labels$networking, skills$network),
      create_skill_section(labels$hardware_repair, skills$hardware)
    ))
  })
  
  # Conteúdo dos idiomas
  output$languages_content <- renderUI({
    lang_list <- get_data()$languages
    HTML(paste("<ul>", paste("<li>", lang_list, "</li>", collapse = ""), "</ul>"))
  })
  
  # Conteúdo das referências
  output$references_content <- renderUI({
    refs <- get_data()$references
    HTML(paste(
      "<p><strong>", refs$nome1, "</strong><br>", refs$cargo1, "</p>",
      "<p><strong>", refs$nome2, "</strong><br>", refs$cargo2, "</p>",
      "<p><strong>Contato:</strong> ", refs$contato, "</p>"
    ))
  })
}

# Executar a aplicação
shinyApp(ui = ui, server = server)

