library(ggplot2)
library(data.table)
library(lubridate)

####Read in the data####
my_df<-read.table(file='C:/Users/meinv/Documents/R Projects/R Exercise/exdata_data_household_power_consumption/household_power_consumption.txt',
                  header=TRUE,sep=";",stringsAsFactors = FALSE,na.strings = "?")

####subset the data: dates 2007-02-01 and 2007-02-02####
plot_data<-subset(my_df,Date %in% c('1/2/2007','2/2/2007'))


datetime<-strptime(paste(plot_data$Date,plot_data$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")

####Create Plot 3#####
png("plot3.png",width=480, height=480)
plot(datetime,plot_data$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l",col="black")
lines(datetime,plot_data$Sub_metering_2,col="red")
lines(datetime,plot_data$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),lty=c(1,1,1),cex=.8,
       legend=c("Sub_metering_1","Sub_metering_2",
                                                       "Sub_metering_3"))
dev.off()