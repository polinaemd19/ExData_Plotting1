hpc <- read.csv("~/household_power_consumption.txt", header=TRUE, sep=";",colClasses = "character")
dates <- c("2/2/2007", "1/2/2007")
dates<-as.Date(dates, "%d/%m/%Y")
hpc<-hpc[which(as.Date(hpc$Date,"%d/%m/%Y") == dates[2] | as.Date(hpc$Date,"%d/%m/%Y") == dates[1]), ]
DateTime <-paste(hpc$Date,hpc$Time,sep = " ")
Date1<-as.POSIXlt(DateTime ,format="%d/%m/%Y %H:%M:%S",tz=Sys.timezone())


plot(Date1,as.double(hpc$Sub_metering_1),type = "l", lty = 1,col='black',ylab="Energy sub metering")
points(Date1,as.double(hpc$Sub_metering_2),type = "l", lty = 1,col='red')
points(Date1,as.double(hpc$Sub_metering_3),type = "l", lty = 1,col='blue')


legend("topright",lty=1:1:1,col=c('black','red','blue'), legend= c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))