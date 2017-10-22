
R version 3.4.2 (2017-09-28) -- "Short Summer"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)

R ist freie Software und kommt OHNE JEGLICHE GARANTIE.
Sie sind eingeladen, es unter bestimmten Bedingungen weiter zu verbreiten.
Tippen Sie 'license()' or 'licence()' für Details dazu.

R ist ein Gemeinschaftsprojekt mit vielen Beitragenden.
Tippen Sie 'contributors()' für mehr Information und 'citation()',
um zu erfahren, wie R oder R packages in Publikationen zitiert werden können.

Tippen Sie 'demo()' für einige Demos, 'help()' für on-line Hilfe, oder
'help.start()' für eine HTML Browserschnittstelle zur Hilfe.
Tippen Sie 'q()', um R zu verlassen.

[R.app GUI 1.70 (7434) x86_64-apple-darwin15.6.0]

[Verlauf wiederhergestellt aus /Users/adelamargaritamediavillaaleman/.Rapp.history]

> setwd("~/Desktop/DS_Coursera")
> housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
> house_a_data <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])
> house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
> house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
> 
> hist(as.numeric(house_a_data$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
> 
> dev.copy(png,"plot1.png", width=480, height=480)
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
> 
> 
> 
> #Plot2
> plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
> 
> dev.copy(png,"plot2.png", width=480, height=480)
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
> 
> 
> 
> #Plot 3
> with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})
> 
> lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
> lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
> legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
> dev.copy(png, file="plot3.png", height=480, width=480)
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
> 
> 