library(tidyverse)
library(forecast)
library(tseries)
library(xts)
library(imputeTS)
library(dplyr)

# dataset <- read.table("/media/stark/Games/Clg/Covid/forecasting_dataset.csv",sep = ",",header = T)
# dataset <- na_mean(dataset)
# 
# 
# #write.csv(dataset,file = "/media/stark/Games/Clg/Covid/forecasting_dataset1.csv",row.names = TRUE)
# 
# #for(i in 2:69){
# #y <- mean(df_como[,i])
# #temp[,i]<- y
# #}
# #
# col <- c("Week","Onion","Tomato","Potato","Cabbage","Lady's finger","Cauliflower","Brinjal")
# r <- seq(as.Date('2020-02-20'),as.Date('2020-04-29'),by = 7)
# final_data<-data.frame(matrix(ncol = 8, nrow = 10))
# colnames(final_data) <- col
# Week <- seq(as.Date('2020-02-20'),as.Date('2020-04-29'),by = 7)
# final_data[,1] <- Week
# 
# start = 2
# end = 13
# c=2
# for(i in 1:7){
#   final_data[,c] <- rowMeans(dataset[start:end])
#   c <- c + 1
#   start <- start + 14
#   end <- end + 14
# }
# 
# #write.csv(final_data,file = "/media/stark/Games/Clg/Covid/final_forecasting_dataset.csv" ) 

dataset = read.table("/media/stark/Games/Clg/Covid/final_forecasting_dataset.csv",sep = ",",header = TRUE)


onion <- dataset[,2]  
col <- c("Week","Price")
Week <- seq(as.Date('2020-02-20'),as.Date('2020-04-29'),by = 7)
final_data<-data.frame(matrix(ncol = 2, nrow = 10))
colnames(final_data) <- col
final_data[,2] <- x
final_data[,1] <- Week

ts_data <- xts(final_data[,-1], order.by=as.Date(final_data[,1], "%m/%d/%Y"))
ts_data <- ts(as.numeric(ts_data))

trn <- window(ts_data,end=c(8))
tst <- window(ts_data,start=c(8))

arima.model <- auto.arima(ts_data,allowdrift = T)
arima.model

arima.forecast <- forecast(arima.model,h=4,level=80)
arima.forecast
autoplot(arima.forecast)

holt <- holt(trn,h=4)
plot(holt)
lines(tst,lty = 3)

hw.model <- HoltWinters(ts_data,gamma = FALSE)
plot(hw.model,main="Original time series against the Fitted time series")
hw.model.predict <- predict(hw.model,n.ahead = 2)
hw.model.predict
round(hw.model.predict)
p_values = hw.model.predict

ts.plot(ts_data,hw.model.predict,col = "navyblue",gpars= list(lty=c(1:2))) 

