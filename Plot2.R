library(ggplot2)
library(data.table)
library(lubridate)

####Read in the data####
my_df<-read.table(file='C:/Users/meinv/Documents/R Projects/R Exercise/exdata_data_household_power_consumption/household_power_consumption.txt',
                  header=TRUE,sep=";",stringsAsFactors = FALSE,na.strings = "?")

####subset the data: dates 2007-02-01 and 2007-02-02####
plot_data<-subset(my_df,Date %in% c('1/2/2007','2/2/2007'))


datetime<-strptime(paste(plot_data$Date,plot_data$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")

####Create Plot 2#####
Sys.setlocale("LC_TIME", "English")
png("plot2.png",width=480, height=480)
plot(x=datetime,y=plot_data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()


