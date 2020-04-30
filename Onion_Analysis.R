
data1 <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Onion/Onion_2020_correction2_weeklyAvg.csv")
data1
colnames(data1) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
data1
library(oddsratio)
