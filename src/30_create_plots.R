# Name of CSV file
in.file <- '/home/thiyaku/Projects/1111/csv/state_data_v2.csv'

# read CSV file as data frame without header
in.df <- read.csv(in.file, stringsAsFactors = F)
colnames(in.df)

# Change column name of data frame
colnames(in.df) <- c('Name', 'Area', 'Population')
  
# Create plots using the base plot
plot(in.df$Population, in.df$Area)
# plot(in.df$Name, in.df$Area)

# plot lines
plot(in.df$Population, in.df$Area,type =  'l', main = 'Area vs Pop')
plot(in.df$Population, in.df$Area,type =  'h', main = 'Area vs Pop')




# plot with label, specific color and symbol
plot(in.df$Population, in.df$Area, xlab = 'Population', ylab = 'Area', col = "red", pch = '3')
plot(in.df$Population, in.df$Area, xlab = 'Population', ylab = 'Area', col = "red", pch = 3)
plot(in.df$Population, in.df$Area, xlab = 'Population', ylab = 'Area', col = "red", pch = 1)



# Filter data frame

# Pick the row matching the state name
foo <- in.df[in.df$Name == 'State_04',]
print(foo)
# Pick the rows with are area lying between range
foo <- in.df[in.df$Area < 90000,]
print(foo)
# Filter data frame using more than one condition
foo <- in.df[in.df$Area < 90000 && in.df$Population > 50000,]
print(foo)
foo <- in.df[in.df$Area < 90000 || in.df$Population > 50000,]
print(foo)