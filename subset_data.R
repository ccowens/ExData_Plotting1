# read in the file I unzipped from downloading:
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# as a dataframe
# converting the ?'s to NAs
read_in <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", quote = "\"",
                      dec = ".", fill = TRUE, comment.char = "", stringsAsFactors = FALSE, na.string=c("?"))

# just the use the string values under Date to get the rows that are required
project_data <- subset(read_in, Date %in% c("1/2/2007","2/2/2007"))
rm(read_in)

# write out the subsetted file for use in other scripts 
write.csv(project_data, "project_data.csv", row.names = FALSE)
