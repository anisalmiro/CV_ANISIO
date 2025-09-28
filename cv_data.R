# Dados estruturados do CV - Anísio Almiro Bule
# Versões em Português e Inglês

# Informações Pessoais
personal_info <- list(
  pt = list(
    nome = "Anísio Almiro Bule",
    endereco = "Maracuene – Distrito de Mali, casa: 109, Q2",
    telefone = "(+258) 86 770 5109",
    celular = "(+258) 84 570 5109",
    id = "110100736119B",
    nascimento = "15 de Novembro de 1990",
    email1 = "Anisio.bule@gmail.com",
    email2 = "anisio.bule@hotmail.com"
  ),
  en = list(
    nome = "Anísio Almiro Bule",
    endereco = "Maracuene – Mali District, house: 109, Q2",
    telefone = "(+258) 86 770 5109",
    celular = "(+258) 84 570 5109",
    id = "110100736119B",
    nascimento = "November 15, 1990",
    email1 = "Anisio.bule@gmail.com",
    email2 = "anisio.bule@hotmail.com"
  )
)

# Resumo Profissional
professional_summary <- list(
  pt = c(
    "Especialista em Sistemas de Informação de Saúde",
    "Coordenador de Integração de Sistemas de Vigilância em Saúde",
    "Analista e Desenvolvedor de Sistemas",
    "Especialista em TI"
  ),
  en = c(
    "Health Information System Specialist",
    "Health Surveillance Systems Integration Coordinator",
    "Systems Analyst and Developer",
    "IT Specialist"
  )
)

# Experiência Profissional
work_experience <- list(
  pt = data.frame(
    periodo = c("2021 - Atual", "2013 - 2021", "2012 - 2014"),
    cargo = c(
      "Especialista em Sistemas de Informação de Saúde",
      "Técnico de Suporte de TI",
      "Analista e Desenvolvedor de Sistemas"
    ),
    empresa = c(
      "Instituto Nacional de Saúde",
      "Itec Solutions Moçambique",
      "Developers Group (WE-IT)"
    ),
    responsabilidades = c(
      "Garantir a implementação de todas as atividades de integração de sistemas de saúde; Desenvolvimento de sistemas e dashboards para monitoramento e visualização de dados; Desenvolvimento e migração de sistemas; Implementação de sistemas de coleta e visualização de dados (DHIS2, Redcap, ODK, Kobotoolbox); Desenvolver sistemas conforme solicitações; Desenvolvimento de scripts de automação de tarefas e análise de dados; M&A; Análise e mineração de dados usando ferramentas de Análise e Visualização de Dados; Garantir que o repositório seja alimentado com informações produzidas nas comunidades e unidades de saúde; Design e Gestão de Orçamento de Projetos; Garantir a implementação de atividades de vigilância, planejamento de atividades e relatórios técnicos; Redação e revisão de protocolos de estudo; Desenvolvimento de Dashboard de Visualização de Dados; Treinamento em questões de monitoramento e triangulação de dados",
      "Garantir o funcionamento adequado de todos os recursos computacionais da empresa; Gestão de servidores (Windows Server 2012R2): Active Directory, criação de máquinas virtuais na rede, Backups, DHCP, DNS; Suporte na instalação, manutenção de sistemas operacionais e hardware dos computadores da empresa e clientes; Gestão de incidentes reportados através de chamadas, emails e sistema de gestão de tickets; Gestão de contas de email, criação e atribuição de permissões; Reportar informações relacionadas a atualizações de sistema e mudanças de processo; Suporte na resolução de todos os tipos de incidentes presencialmente ou remotamente; Manter o funcionamento dos serviços conforme esperado executando checklists diários; Preparar relatórios diários, mensais e anuais; Suporte ao Sistema de Gestão de Tickets",
      "Análise e Design de Sistemas; Desenvolver diferentes Sistemas de Gestão e aplicações (WEB e standalone); Treinamento de usuários para manipulação de sistemas integrados"
    ),
    stringsAsFactors = FALSE
  ),
  en = data.frame(
    periodo = c("2021 - Current", "2013 - 2021", "2012 - 2014"),
    cargo = c(
      "Health Information System Specialist",
      "IT Support Technician",
      "System Analyst and Developer"
    ),
    empresa = c(
      "National Institute of Health",
      "ICAP",
      "Itec Solutions Moçambique",
      "Developers Group (WE-IT)"
    ),
    responsabilidades = c(
      "Ensure the implementation of all health systems integration activities; Development of systems and dashboards for monitoring and data visualization; Systems development and migration; Implementation of data collection and visualization systems (DHIS2, Redcap, ODK, Kobotoolbox); Develop systems according to requests; Development of task automation and data analysis scripts; M&A; Analysis and data mining using Data Analysis and Visualization tools for graphical and mapped illustration of data; Ensure that the repository is fed from the information produced in the communities and health units; Project Budget Design and Management; Ensure the implementation of surveillance activities, planning of activities and technical reports; Writing and review of study protocols; Development of Data Visualization Dashboard; Training in matters of monitoring and triangulation of data",
      "Ensure the proper functioning of all computer resources of the company; Server management (Windows Server 2012R2): Active Directory, creation of virtual machines on the network, Backups, DHCP, DNS; Support in the installation, maintenance of operating systems and hardware of the company's computers and customers; Management of incidents reported from calls, emails and ticket management system; Management of email accounts, creation and assignment of permissions; Report information related to system updates and process changes; Support in the resolution of all types of incidents in person or remotely; Maintain the functioning of the services as expected by running daily checklists; Prepare daily, monthly and annual reports; Ticket Management System Support",
      "Systems Analysis and Design; Develop different Management Systems and applications (WEB and standalone); Training of users for manipulation of Integrated systems"
    ),
    stringsAsFactors = FALSE
  )
)

# Formação Acadêmica
education <- list(
  pt = data.frame(
    ano = c("2025","2019", "2017", "2013"),
    titulo = c(
      "Mestrado em Gestão de Riscos de Desastres e Adaptação às Mudanças Climáticas (Em curso)",
      "Licenciatura em Informática",
      "Treinamento em Reparação de Computadores e Impressoras, Desenvolvimento de Firmware e Correção BSD",
      "Conclusão do Curso Técnico Médio em Ciências da Computação"
    ),
    instituicao = c(
      "Universidade Eduardo Mondlane",
      "Universidade Eduardo Mondlane",
      "ITECGROUP SOUTH AFRICA",
      "Instituto Médio de Computação e Gestão - Maputo"
    ),
    observacoes = c(
      "Certificação em Ethical Hacking",
      "",
      "",
      ""
    ),
    stringsAsFactors = FALSE
  ),
  en = data.frame(
    ano = c("2025","2019", "2017", "2013"),
    titulo = c(
      "Master Degree in Disaster Risk Management and Climate Change Adaptation (Ongoing)",
      "Informatics Degree",
      "Training in Computer and Printer Repair, Firmware Development and BSD Correction",
      "Completion of the Medium Technical Course in Computer Science"
    ),
    instituicao = c(
      "Eduardo Mondlane University",
      "Eduardo Mondlane University",
      "ITECGROUP SOUTH AFRICA",
      "Middle Institute of Computing and Management - Maputo"
    ),
    observacoes = c(
      "Ethical Hacking Certification",
      "",
      "",
      ""
    ),
    stringsAsFactors = FALSE
  )
)

# Habilidades Técnicas
technical_skills <- list(
  pt = list(
    microsoft = c("Power BI", "Microsoft WORD", "ACCESS", "EXCEL"),
    database = c("MYSQL", "ORACLE", "PostgreSQL", "SQL Server"),
    data_tools = c("Data mining", "Pentaho", "SPSS"),
    data_collection = c("ODK", "Kobotoolbox", "DHIS2", "RedCap"),
    programming = c("Python", "R", "JAVA", "SQL", "PHP", "HTML5", "CSS", "JavaScript", "VISUAL BASIC", "HTML", "PLSQL", "C++"),
    frameworks = c("Laravel", "CodeIgniter", "Node.js", "Vue.js"),
    operating_systems = c("UNIX", "LINUX", "WINDOWS"),
    network = c("TCP/IP", "LAN", "WAN", "Windows Servers"),
    hardware = c("Cisco A++", "Network+ Principles")
  ),
  en = list(
    microsoft = c("Power BI", "Microsoft WORD", "ACCESS", "EXCEL"),
    database = c("MYSQL", "ORACLE", "PostgreSQL", "SQL Server"),
    data_tools = c("Data mining", "Pentaho", "SPSS"),
    data_collection = c("ODK", "Kobotoolbox", "DHIS2", "RedCap"),
    programming = c("Python", "R", "JAVA", "SQL", "PHP", "HTML5", "CSS", "JavaScript", "VISUAL BASIC", "HTML", "PLSQL", "C++"),
    frameworks = c("Laravel", "CodeIgniter", "Node.js", "Vue.js"),
    operating_systems = c("UNIX", "LINUX", "WINDOWS"),
    network = c("TCP/IP", "LAN", "WAN", "Windows Servers"),
    hardware = c("Cisco A++", "Network+ Principles")
  )
)

# Idiomas
languages <- list(
  pt = c("Português", "Inglês"),
  en = c("Portuguese", "English")
)

# Referências
references <- list(
  pt = list(
    nome1 = "Leonardo dos Santos Cuinhane",
    cargo1 = "Membro",
    nome2 = "Francisco Chambule",
    cargo2 = "Membro",
    contato = "82 872 4886 – Leonardo Seventine"
  ),
  en = list(
    nome1 = "Leonardo dos Santos Cuinhane",
    cargo1 = "Member",
    nome2 = "Francisco Chambule",
    cargo2 = "Member",
    contato = "82 872 4886 – Leonardo Seventine"
  )
)

# Labels para interface
ui_labels <- list(
  pt = list(
    title = "Currículo - Anísio Almiro Bule",
    personal_info = "Informações Pessoais",
    professional_summary = "Resumo Profissional",
    work_experience = "Experiência Profissional",
    education = "Formação Acadêmica",
    technical_skills = "Habilidades Técnicas",
    languages = "Idiomas",
    references = "Referências",
    period = "Período",
    position = "Cargo",
    company = "Empresa",
    responsibilities = "Responsabilidades",
    year = "Ano",
    degree = "Título",
    institution = "Instituição",
    notes = "Observações",
    name = "Nome",
    address = "Endereço",
    phone = "Telefone",
    mobile = "Celular",
    birth_date = "Data de Nascimento",
    microsoft_tools = "Ferramentas Microsoft",
    databases = "Bases de Dados",
    data_analysis = "Análise de Dados",
    data_collection_tools = "Ferramentas de Coleta de Dados",
    programming_languages = "Linguagens de Programação",
    frameworks_tools = "Frameworks",
    operating_systems = "Sistemas Operacionais",
    networking = "Redes",
    hardware_repair = "Reparação de Hardware"
  ),
  en = list(
    title = "Resume - Anísio Almiro Bule",
    personal_info = "Personal Information",
    professional_summary = "Professional Summary",
    work_experience = "Work Experience",
    education = "Education",
    technical_skills = "Technical Skills",
    languages = "Languages",
    references = "References",
    period = "Period",
    position = "Position",
    company = "Company",
    responsibilities = "Responsibilities",
    year = "Year",
    degree = "Degree",
    institution = "Institution",
    notes = "Notes",
    name = "Name",
    address = "Address",
    phone = "Phone",
    mobile = "Mobile",
    birth_date = "Date of Birth",
    microsoft_tools = "Microsoft Tools",
    databases = "Databases",
    data_analysis = "Data Analysis",
    data_collection_tools = "Data Collection Tools",
    programming_languages = "Programming Languages",
    frameworks_tools = "Frameworks",
    operating_systems = "Operating Systems",
    networking = "Networking",
    hardware_repair = "Hardware Repair"
  )
)

