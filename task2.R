library(dplyr)

data = greendb %>% filter(species_ru == "Береза пушистая")
greendb = read_csv("~/urban_modeling/greendb.csv")
model = lm(d_trunk_m ~ adm_region, data)

anova(model)
# Analysis of Variance Table
# 
# Response: d_trunk_m
# Df  Sum Sq  Mean Sq F value    Pr(>F)    
# adm_region  105  23.366 0.222533    17.6 < 2.2e-16 ***
#   Residuals  8851 111.912 0.012644                      
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
