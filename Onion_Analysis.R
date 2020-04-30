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
potato_state.ts <- as.ts(potato_state)
my_Object <- ts(potato_state, start=1,frequency = 15)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")$out
outvalues
summary(potato_state[2:16])

potato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Potato_2020_correction2_weeklyAvg.csv")
colnames(potato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
potato_country.ts <- as.ts(potato_country)
my_Object <- ts(potato_country, start=1,frequency = 16)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of potato in the country considering 15 states")$out
outvalues
summary(potato_country[2:9])


tomato_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Tomato_2020_correction3_weeklyAvg.csv")
tomato_state
tomato_state.ts <- as.ts(tomato_state)
my_Object <- ts(tomato_state, start=1,frequency = 15)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")$out
outvalues
summary(tomato_state[2:16])

tomato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Tomato_2020_correction2_weeklyAvg.csv")
colnames(tomato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
summary(tomato_country[2:9])
