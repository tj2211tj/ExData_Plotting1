dat<-read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
dat<-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$DateTime<-strptime(paste(dat$Date,dat$Time,sep=" ",collapse=NULL),format="%d/%m/%Y %H:%M:%S")

png(filename = "plot1.png",width = 480,height = 480)
hist(as.numeric(dat$Global_active_power),col="red",xlab="Global Active Power (kilowatts",main="Global Active Power")
dev.off()