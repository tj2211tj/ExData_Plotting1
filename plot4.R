dat<-read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
dat<-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$DateTime<-strptime(paste(dat$Date,dat$Time,sep=" ",collapse=NULL),format="%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png",width = 480,height = 480)
par(mfrow=c(2,2))
plot(dat$DateTime,dat$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(dat$DateTime,dat$Global_active_power)
plot(dat$DateTime,dat$Voltage,type="n",xlab="datetime",ylab="Voltage")
lines(dat$DateTime,dat$Voltage)
plot(dat$DateTime,dat$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(dat$DateTime,dat$Sub_metering_1)
lines(dat$DateTime,dat$Sub_metering_2,col="red")
lines(dat$DateTime,dat$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),lty = 1:1, cex = 0.8)
plot(dat$DateTime,dat$Global_reactive_power,type="n", xlab="datetime",ylab="Global_reactive_power")
lines(dat$DateTime,dat$Global_reactive_power)
dev.off()

