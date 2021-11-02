library(tidyverse)
library(dplyr)
library(readr)
library(jsonlite)
library(sf)


greendb = read_csv("~/urban_modeling/greendb.csv")

greendb %>% summary
greendb |> summary()

#######
### Регрессионная зависимость высоты от диаметра ствола 
### для послеления Десеновское вида береза пушистая
######

data = greendb %>% 
  filter(species_ru == "Береза пушистая", adm_region == "поселение Десёновское") %>% select(
    height_m, d_trunk_m
  )

model = lm(d_trunk_m ~ height_m, data)

summary(model)

# d_trunk_m = 0.0115320 * heght_m +0.0421969
# p < 0.001

anova(model)
# Analysis of Variance Table
# Response: d_trunk_m
# Df Sum Sq Mean Sq F value    Pr(>F)    
# height_m    1 9.0661  9.0661  1048.2 < 2.2e-16 ***
#   Residuals 726 6.2791  0.0086                      
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# Зависит p < 0.05
