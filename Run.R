# set your working directory
setwd("/git/rproject")

# creating the fictional data (you don't need to run this!)
# data("diamonds", package="ggplot2")
# xlsx::write.xlsx(diamonds[1:1000,],"data_raw/data.xlsx")
# haven::write_dta(diamonds[1:1000,],"data_raw/data.dta")
# haven::write_sav(diamonds[1:1000,],"data_raw/data.sav")

# loading in the data
# (you can choose a different line depending
# on whether you have a .xlsx, .dta, or .sav file)
data <- xlsx::read.xlsx("data_raw/data.xlsx", sheetIndex = 1)
#data <- haven::read_dta("data_raw/data.dta")
#data <- haven::read_sav("data_raw/data.sav")

# display the data
print(data)

# get some summary statistics:

# mean price
mean(data$price, na.rm=T)

# standard deviation of price
sd(data$price, na.rm=T)

# quantiles of price
quantile(data$price, na.rm=T)

# what proportion of diamonds have a carat less than 0.34?
mean(data$carat<=0.34)

# how many diamonds have a carat less than 0.34?
sum(data$carat<=0.34)

# make a plot
plot(data$price~data$cut)

