rm(ls = list())
# Name of CSV file
in.file <- '/home/thiyaku/Projects/1111/R_training/csv/state_data_v2.csv'

# read CSV file as data frame without header
in.df <- read.csv(in.file, stringsAsFactors = T)

# Change column name of data frame
colnames(in.df) <- c('Name', 'Area', 'Population')
  
# Create plots using the base plot
plot(in.df$Population, in.df$Area)
plot(in.df$Name, in.df$Area) # can plot strings by treating it as factor/levels

# Factors
months <- c('Jan', 'Feb', 'Mar', 'Apr')
rf <- c(100, 20, 30, 40)
plot(factor(months), rf)
# Specify levels for factor
factor(months, levels = months)
plot(factor(months, levels = months), rf)

months <- c('Jan', 'Feb', 'Mar', 'Apr', 'Jan', 'Feb')
print(factor(months))
print(factor(months, levels=c('Jan', 'Feb', 'Mar', 'Apr')))
rf <- c(100, 20, 30, 40, 20, 30)
plot(factor(months), rf)
plot(factor(months, levels=c('Jan', 'Feb', 'Mar', 'Apr')), rf)

# Date function
date1 <- as.Date('2018-01-01', format = '%Y-%m-%d')
date2 <- as.Date('2018-12-31', format = '%Y-%m-%d')
# Create sequence of dates every day
print(seq(date1, date2, by = '1 day'))
# 8 days
print(seq(date1, date2, by = '7 day'))
# Month
print(seq(date1, date2, by = '1 month'))

# Stores dates in a variable
in.dates <- seq(date1, date2, by = '7 day')

# Sort the values
sort(in.dates)
# Sort in reverse order
sort(in.dates, decreasing = T)
# Print number values in a vector
print(length(in.dates))
plot(in.dates, 1:length(in.dates))

# plot lines
plot(in.df$Population, in.df$Area,type =  'l')
# create plot with title
plot(in.df$Population, in.df$Area,type =  'l', main = 'Area vs Pop')
plot(in.df$Population, in.df$Area,type =  'b', main = 'Area vs Pop')
plot(in.df$Population, in.df$Area,type =  'c', main = 'Area vs Pop')
plot(in.df$Population, in.df$Area,type =  'o', main = 'Area vs Pop')
plot(in.df$Population, in.df$Area,type =  'h', main = 'Area vs Pop')


# plot with label, specific color and symbol
plot(in.df$Population, in.df$Area, xlab = 'Population', ylab = 'Area', 
     col = "red", pch = 3)
# USe string instead of symbol
plot(in.df$Population, in.df$Area, 
     xlab = 'Population', ylab = 'Area', col = "red", pch = '3')
plot(in.df$Population, in.df$Area, 
     xlab = 'Population', ylab = 'Area', col = "red", pch = 1)

# Filter data frame

# Pick the row matching the state name
foo <- in.df[in.df$Name == 'State_04',]
print(foo)
# Pick the rows with are area lying between range
foo <- in.df[in.df$Area < 90000,]
print(foo)
# Filter data frame using more than one condition
foo <- in.df[in.df$Area < 90000 && in.df$Population > 50000,] # Returns only one value
print(foo)
foo <- in.df[in.df$Area < 90000 & in.df$Population > 50000,] # Do element to element comparision
print(foo)
foo <- in.df[in.df$Area < 90000 || in.df$Population > 50000,]
print(foo)
foo <- in.df[in.df$Area < 90000 | in.df$Population > 50000,]
print(foo)