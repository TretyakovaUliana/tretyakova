library(tidyverse)
library(dplyr)
library(readr)
library(jsonlite)
library(sf)


greendb = read_csv("~/Downloads/ulya/greendb.csv")

greendb %>% summary
greendb |> summary()

#######
### Регрессионная зависимость высоты от диаметра ствола 
### для послеления Десеновское вида береза пушистая
######

fit_data = greendb %>% 
  filter(species_ru == "Береза пушистая", adm_region == "поселение Десёновское", height_m < 100) %>% select(
    height_m, d_trunk_m
  )
ggplot(fit_data, aes(x=height_m, y=d_trunk_m)) +
  geom_point()+
  geom_smooth(method=lm)
