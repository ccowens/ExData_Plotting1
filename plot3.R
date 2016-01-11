library(lubridate)

project_data <- read.csv("project_data.csv", stringsAsFactors = FALSE)
project_data$DateTime <- dmy_hms(paste(project_data$Date, project_data$Time))

png("plot2.png")
with(project_data, {
  plot(DateTime, Global_active_power, type="n", 
       fg = "black",
       xlab = "",
       ylab = "Global Active Power (kilowatts)")
  lines(DateTime, Global_active_power, 
        col = "black")
})
dev.off()
