df = read.table("ExData_Plotting1/household_power_consumption.txt", header = TRUE, sep = ";")
d1 = strptime("2007-02-01","%Y-%m-%d")
d2 = strptime("2007-02-02","%Y-%m-%d")
df$Date = strptime(df$Date, "%d/%m/%Y")
df2 = df[(df$Date == d1) | (df$Date == d2),]
df2$Global_active_power = as.numeric(df2$Global_active_power)/1000
hist(df2$Global_active_power, xlim = range(0:6), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", breaks = 16)