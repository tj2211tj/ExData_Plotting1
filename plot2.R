dat<-read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
dat<-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$DateTime<-strptime(paste(dat$Date,dat$Time,sep=" ",collapse=NULL),format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png",width = 480,height = 480)
plot(dat$DateTime,dat$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(dat$DateTime,dat$Global_active_power)
dev.off()