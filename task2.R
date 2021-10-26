library(dplyr)


data = read_csv(file = "greendb.csv")

data = data %>% filter(species_ru == "Береза пушистая")
model = lm(height_m ~ adm_region, data)

anova(model)
# value 21, это больше 1 значит район влияет на среднюю высоту березы