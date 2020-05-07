library(dplyr)

da <- read.csv("/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Pollution_Gases/CO/CO_Delhi.csv")
df <- data.frame(da)
df$utc <- as.Date(df$utc)
un_date <- unique(as.Date(df$utc))
fd <- data.frame(matrix(ncol = 4, nrow = length(un_date)))
colnames(fd) <- c("city","date","parameter","value")
fd$date <- un_date
fd$city <- df$city[1]
fd$parameter <- df$parameter[1]

value <- df %>% group_by(df$utc) %>% summarise(mean(value))
fd$value <- rev(value$`mean(value)`)
fd
write.csv(fd,"/home/dheeraj/my_projects/my_project_env/practice/COVID19-Analysis-on-Vegetable_prices/Pollution_Gases/CO/CO_Delhi_new.csv")
