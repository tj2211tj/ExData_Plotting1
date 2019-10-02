dat<-read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
dat<-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$DateTime<-strptime(paste(dat$Date,dat$Time,sep=" ",collapse=NULL),format="%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png",width = 480,height = 480)
plot(dat$DateTime,dat$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(dat$DateTime,dat$Sub_metering_1)
lines(dat$DateTime,dat$Sub_metering_2,col="red")
lines(dat$DateTime,dat$Sub_metering_3,col="blue")
dev.off()