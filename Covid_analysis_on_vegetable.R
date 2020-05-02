library(oddsratio)
library(dplyr)
library(ggplot2)
library(Metrics)
library(reshape)
#data1 <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Onion/Onion_2020_correction2_weeklyAvg.csv")
#data1
#colnames(data1) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
#data1
#glimpse(data1)
#sapply(data1, mean, na.rm=TRUE)
#View(summary(data1))

############################
onion_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Onion_2020_correction3_weeklyAvg.csv")
onion_state.ts <- as.ts(onion_state)
my_Object <- ts(onion_state, start=1,frequency = 8)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of onion in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of onion in the country considering 15 states")$out
outvalues
summary(data1[2:16])

onion_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Onion_2020_correction2_weeklyAvg.csv")
colnames(onion_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
potato_country.ts <- as.ts(onion_country)
my_Object <- ts(onion_country, start=1,frequency = 16)
boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of onion in 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of onion in 15 states")$out
outvalues
summary(data1[2:9])


potato_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Potato_2020_correction3_weeklyAvg.csv")
potato_state.ts <- as.ts(potato_state)
my_Object <- ts(potato_state, start=1,frequency = 8)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of potato in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of potato in the country considering 15 states")$out
outvalues
summary(potato_state[2:16])

potato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Potato_2020_correction2_weeklyAvg.csv")
potato_country
colnames(potato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
potato_country.ts <- as.ts(potato_country)
my_Object <- ts(potato_country, start=1,frequency = 16)
boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of potato in 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of potato in 15 states")$out
outvalues
summary(potato_country[2:9])


tomato_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Tomato_2020_correction3_weeklyAvg.csv")
tomato_state
tomato_state.ts <- as.ts(tomato_state)
my_Object <- ts(tomato_state, start=1,frequency = 8)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")$out
outvalues
summary(tomato_state[2:16])

tomato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Tomato_2020_correction2_weeklyAvg.csv")
colnames(tomato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
tomato_country.ts <- as.ts(tomato_country)
my_Object <- ts(tomato_country, start=1,frequency = 15)
boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of tomato in 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of tomato in 15 states")$out
outvalues
summary(tomato_country[2:9])



tomato_state <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/state/Tomato_2020_correction3_weeklyAvg.csv")
tomato_state
tomato_state.ts <- as.ts(tomato_state)
my_Object <- ts(tomato_state, start=1,frequency = 8)
boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="weeks",ylab = "states_price",main = "Prices of tomato in the country considering 15 states")$out
outvalues
summary(tomato_state[2:16])

tomato_country <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/country/Tomato_2020_correction2_weeklyAvg.csv")
colnames(tomato_country) <- c("states", "w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8")
tomato_country.ts <- as.ts(tomato_country)
my_Object <- ts(tomato_country, start=1,frequency = 15)
boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of tomato in 15 states")
outvalues = boxplot(my_Object~cycle(my_Object),xlab="states",ylab = "8 weeks_price",main = "Prices of tomato in 15 states")$out
outvalues
summary(tomato_country[2:9])


#########################################  ploting the mean line graph ####################3


x <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Dataset - Sheet8 (2).csv")
data <- as.data.frame(x)

fit_glm <- glm(data$Y ~ data$Onion_price + data$Tomato_price + data$Potato.Price + data$Cabbage_price + data$Bhindi_price + data$Cauliflower_price + data$Brinjal_Price, data = data, family = "binomial") 
or_glm(data = data_glm, model = fit_glm)

exp(coef(fit_glm))[-1]  # prints oddsratio separatley

summary(fit_glm)


como <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Dataset - Sheet4.csv")
como
df_como <- as.data.frame(como)
df_como

col <- c("onion","tomato","potato","cabbage","bhindi","cauliflower","brinjal")
r <- c("week_1","week_2","week_3","week_4","week_5","week_6","week_7","week_8")
final_data<-data.frame(matrix(ncol = 7, nrow = 8))
colnames(final_data) <- col
rownames(final_data) <- r


for (i in 2:69){
  x <- df_como[,i]
  x[is.na(x)] <- 0
  df_como[,i] <- x
}
temp <-data.frame(matrix(ncol =70, nrow = 1))

for(i in 2:69){
  y <- mean(df_como[,i])
  temp[,i]<- y
}

s <- 2
e <- 9
for(i in 1:7){
  arr <- temp[s:e]
  print((arr))
  for(k in 1:8){
    final_data[k,i] <- arr[k]
  }
  s <- s + 10
  e <- e + 10
}
Week <- seq(1,8,1)
df <- data.frame(Week,final_data)
df.m <- melt(df,id.vars = "Week")
ggplot(data = df.m,aes(x = Week, y = value, group = variable, color = variable)) + geom_line(size = 2)








