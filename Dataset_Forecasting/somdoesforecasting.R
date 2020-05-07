library(IRdisplay)
library(magrittr)
library(tidyverse)
library(scales)
library(gridExtra)
library(forecast)
library(tseries)
library(ggthemes)
library(Metrics)
require(graphics)
library(ggplot2)
library(ggfortify)
library(xts)
#Dataset_Forecasting - 10 weeks data.csv
#brinjal.csv

dataset <- read.table("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Dataset_Forecasting/f_dataset.csv",sep = ",",header = T)
dataset
df <- as.data.frame(dataset)
df
temp<-c()
#### to remove na and take means for first ten columns
for(i in 14:23){
df[is.na(df[,i]), i] <- mean(df[,i], na.rm = TRUE)
df[,i]
temp <-c(temp, mean(df[,i]))

}
df
temp

col <- c("Week","Price")
Week <- seq(as.Date('2020-02-20'),as.Date('2020-04-29'),by = 7)
final_data<-data.frame(matrix(ncol = 2, nrow = 10))
final_data
colnames(final_data) <- col
final_data[,2] <- temp
final_data[,1] <- Week

ts_data <- xts(final_data[,-1], order.by=as.Date(final_data[,1], "%m/%d/%Y"))
ts_data <- ts(as.numeric(ts_data))
ts.plot(ts_data)


arima.model <- auto.arima(ts_data,allowdrift = T)
arima.model

arima.forecast <- forecast(arima.model,h=4,level=80)
arima.forecast
autoplot(arima.forecast)

holt <- holt(ts_data,h=4)
plot(holt)
lines(ts_data,lty = 3)

hw.model <- HoltWinters(ts_data,gamma = FALSE)
plot(hw.model,main="Original time series against the Fitted time series")
hw.model.predict <- predict(hw.model,n.ahead = 2)
hw.model.predict
round(hw.model.predict)
p_values = hw.model.predict
plot(hw.model)

ts.plot(ts_data,hw.model.predict,col = "navyblue",gpars= list(lty=c(1:2))) 
