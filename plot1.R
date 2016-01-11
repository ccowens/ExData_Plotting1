project_data <- read.csv("project_data.csv", stringsAsFactors = FALSE)

png("plot1.png")
hist(project_data$Global_active_power,
     col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
