library(ggplot2)
library(data.table)
library(lubridate)

####Read in the data####
my_df<-read.table(file='C:/Users/meinv/Documents/R Projects/R Exercise/exdata_data_household_power_consumption/household_power_consumption.txt',
                  header=TRUE,sep=";",stringsAsFactors = FALSE,na.strings = "?")

####subset the data: dates 2007-02-01 and 2007-02-02####
plot_data<-subset(my_df,Date %in% c('1/2/2007','2/2/2007'))




####Create Plot 1#####
png("plot1.png",width=480, height=480)
hist(plot_data$Global_reactive_power,xlab="Global Active Power (kilowatts)", main="Global Active Power",col="red")
dev.off()