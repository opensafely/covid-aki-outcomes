install.packages("languageserver")
library(tidyverse)

onset_date = topline %>%
  filter(cestdat>"2020-01-01", cestdat<"2020-12-31") %>%
  select(subjid, cestdat) %>%
  distinct(subjid, .keep_all=T) %>%
  rename(onset_date=cestdat)