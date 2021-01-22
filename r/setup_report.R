# Set country name and path to your local files

country <- "Portugal"
country_code <- "pt"
path_to_folder <- "data"

library(here)
library(qs)
library(dplyr)
library(tidyr)
library(forcats)
library(knitr)
library(kableExtra)
library(data.table)
library(ggplot2)
library(ggthemr)
library(cowplot)
library(patchwork)
# library(flextable)
here::here()
ggthemr::ggthemr("grape")



# Read participants data ---------

part <- qread(file.path(here(), path_to_folder, "participants.qs"))
part %>% part %>% filter(country == country_code)

# Read contacts data -----------

contacts <- qread(file.path(here(), path_to_folder, "contacts.qs"))
contacts %>% contacts %>% filter(country == country_code)


# Read households data ----------

# hh <- file.path(path_to_folder, "households.rds")


