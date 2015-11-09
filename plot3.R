df = read.table("ExData_Plotting1/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = F)
d1 = strptime("2007-02-01","%Y-%m-%d")
d2 = strptime("2007-02-02","%Y-%m-%d")
df$Date = strptime(df$Date, "%d/%m/%Y")
df = df[(df$Date == d1) | (df$Date == d2),]

df$NewDate = paste(df$Date, df2$Time)
df$NewDate = strptime(df$NewDate, "%Y-%m-%d %H:%M:%S")

df$Sub_metering_1 = as.numeric(df$Sub_metering_1)
df$Sub_metering_2 = as.numeric(df$Sub_metering_2)
df$Sub_metering_3 = as.numeric(df$Sub_metering_3)

plot(df$NewDate, df$Sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = "")
points(df$NewDate, df$Sub_metering_2, col = "red", type = "l")
points(df$NewDate, df$Sub_metering_3, col = "blue", type = "l")