library(rvest)

site <- read_html("https://pt.wikipedia.org/wiki/Lista_de_países_e_territórios_por_área")

tabelas <- html_table(site)

tabela <- tabelas[[1]]

colnames(tabela) <- c("Ordem", "País", "Área(km²)", "Observações")

print(head(tabela))