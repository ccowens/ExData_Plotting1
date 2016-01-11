library(lubridate)

project_data <- read.csv("project_data.csv", stringsAsFactors = FALSE)
project_data$DateTime <- dmy_hms(paste(project_data$Date, project_data$Time))

png("plot4.png")

par(mfrow = c(2,2))

with(project_data, {
  plot(DateTime, Global_active_power, type="n", 
       fg = "black",
       xlab = "",
       ylab = "Global Active Power")
  lines(DateTime, Global_active_power, 
        col = "black")
})

with(project_data, {
  plot(DateTime, Voltage, type="n", 
       fg = "black",
       xlab = "datetime",
       ylab = "Voltage")
  lines(DateTime, Voltage, 
        col = "black")
})

with(project_data, {
  plot(DateTime, Sub_metering_1, type="n", 
       fg = "black",
       xlab = "",
       ylab = "Energy sub metering")
  lines(DateTime, Sub_metering_1, 
        col = "black")
  lines(DateTime, Sub_metering_2, 
        col = "red")
  lines(DateTime, Sub_metering_3, 
        col = "blue")
  legend("topright", col = c("black", "red", "blue"), text.col = "black", lty=c(1,1,1), 
         legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
})

with(project_data, {
  plot(DateTime, Global_reactive_power, type="n", 
       fg = "black",
       xlab = "datetime",
       ylab = "Global_reactive_power")
  lines(DateTime, Global_reactive_power, 
        col = "black")
})

dev.off()
