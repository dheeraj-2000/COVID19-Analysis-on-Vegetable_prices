library(forecast)
library(ggplot2)
library(Metrics)
library(forecast)
library(reshape)
library(xts)
library(tseries)

t_tomato <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Dataset_Forecasting/tomato_final.csv")
t_tomato


ts_data <- ts(t_tomato[,2])
ts_data
ts.plot(ts_data)
#x <- data.frame(t_tomato[,2])
#x
#x <- x[-1,]
#x
#col <- c("Week","Price")
#Week <- seq(as.Date('2020-02-20'),as.Date('2020-04-29'),by = 7)
#Week
#final_data<-data.frame(ncol = 2, nrow = 10)
#View(final_data)
#colnames(ts_data) <- col
#final_data[,2] <- x
#final_data[,1] <- Week


#ts_data <- xts(final_data[,-1], order.by=as.Date(final_data[,1], "%m/%d/%Y"))
#ts_data <- ts(as.numeric(ts_data))

start(ts_data)
end(ts_data)
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
