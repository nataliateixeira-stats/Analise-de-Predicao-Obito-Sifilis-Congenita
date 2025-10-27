library(read.dbc)
library(dplyr)
library(stringi)
library(janitor)

# ====== Ler todos os DBC (2013–2023) ======

dir_dbcs <- ""

arquivos <- sprintf("%sSIFCBR%02d.dbc", dir_dbcs, 13:23)
existem <- file.exists(arquivos)
if (!all(existem)) {
  warning("Arquivos ausentes:\n", paste(arquivos[!existem], collapse = "\n"))
}

ler_um_dbc <- function(path) {
  df <- read.dbc(path)
  # Garantir UTF-8
  names(df) <- stri_trans_general(names(df), "Latin-ASCII")
  df <- data.frame(lapply(df, function(col){
    if (is.character(col)) return(stri_encode(col, "", "UTF-8"))
    col
  }), check.names = FALSE)
  janitor::clean_names(df)
}

lista <- lapply(arquivos[existem], ler_um_dbc)
raw <- bind_rows(lista) %>% mutate(nu_ano = as.integer(substr(nu_ano, 1, 4)))


str(raw)

write.csv(raw,"dados_limpos.csv")



