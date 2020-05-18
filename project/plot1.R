hpc <- read.csv("~/household_power_consumption.txt", header=TRUE, sep=";",colClasses = "character")
dates <- c("2/2/2007", "1/2/2007")
dates<-as.Date(dates, "%d/%m/%Y")
hpc<-hpc[which(as.Date(hpc$Date,"%d/%m/%Y") == dates[2] | as.Date(hpc$Date,"%d/%m/%Y") == dates[1]), ]
hist(as.numeric(hpc$Global_active_power),
     col = "red",main="Global Active Power",
     xlab="Global Active Power(kilowatts)")
