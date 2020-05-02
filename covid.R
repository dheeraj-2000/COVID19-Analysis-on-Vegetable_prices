library(oddsratio)
library(ggplot2)
library(reshape)
x <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Dataset - Sheet8 (2).csv")
data <- as.data.frame(x)

fit_glm <- glm(data$Y ~ data$Onion_price + data$Tomato_price + data$Potato.Price + data$Cabbage_price + data$Bhindi_price + data$Cauliflower_price + data$Brinjal_Price, data = data, family = "binomial") 
or_glm(data = data_glm, model = fit_glm)

exp(coef(fit_glm))[-1]  # prints oddsratio separatley

summary(fit_glm)
  

como <- read.csv("/home/stark/Downloads/Dataset - Sheet4.csv")
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
ggplot(data = df.m,aes(x = Week, y = value, group = variable, color = variable)) + geom_line(size = 1)








