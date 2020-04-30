library(oddsratio)
library(dplyr)
library(ggplot2)
library(Metrics)
library(forecast)
library(reshape)
data1 <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Onion/Onion_2020_correction2_weeklyAvg.csv")
data1
colnames(data1) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
data1
glimpse(data1)
sapply(data1, mean, na.rm=TRUE)
View(summary(data1))

############################
onion_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Onion_2020_correction3_weeklyAvg.csv")
summary(data1[2:16])
boxplot(onion_state$Chattisgarh)
outvalues = boxplot(onion_state$Chattisgarh)$out
outvalues
onion_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Onion_2020_correction2_weeklyAvg.csv")
colnames(data1) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
summary(data1[2:9])
Potato_2020_correction2_weeklyAvg.csv

potato_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Potato_2020_correction3_weeklyAvg.csv")
summary(potato_state[2:16])
potato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Potato_2020_correction2_weeklyAvg.csv")
colnames(potato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
summary(potato_country[2:9])


tomato_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Tomato_2020_correction3_weeklyAvg.csv")
tomato_state
start(tomato_state)
summary(tomato_state[2:16])
boxplot(tomato_state$Chattisgarh)
outvalues = boxplot(tomato_state$Chattisgarh)$out
outvalues
my_Object <- ts(tomato_state, start="w1" ,frequency = 15)
tomato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Tomato_2020_correction2_weeklyAvg.csv")
colnames(tomato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
summary(tomato_country[2:9])
