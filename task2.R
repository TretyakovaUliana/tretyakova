library(dplyr)


data = read_csv(file = "greendb.csv")

data = data %>% filter(species_ru == "Береза пушистая")
model = lm(d_trunk_m ~ adm_region, data)

anova(model)
# value 17, это больше 1 значит район влияет на средний диаметр
