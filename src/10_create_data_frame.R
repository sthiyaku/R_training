# Set seed to generate same pseudo random number
set.seed(100)


# Generate random numbers
area <- runif(n = 40, min = 32, max = 342239)
population <- runif(n = 40,min = 64, max = 399810)
names <- sprintf('State_%02d', seq(1,40))

# Save as data frame
state.df <- data.frame(Name = names, Area = area, Population = population)
print(state.df)
head(state.df)
# Viewing data frame
View(state.df)


# Change colnames of data
colnames(state.df) <- c('State name', 'Area (sq. km)', 'Population')

colnames(state.df)[2] <- c('Area')

# Viewing data frame
# View(state.df)

# View starting of data frame
# head(state.df)

# View tail of data frame
# tail(state.df)

# Save data frame as csv file with row names
write.csv(x = state.df, file = '/home/thiyaku/Projects/1111/csv/state_data_v1.csv')

# Save data frame as csv file without row names
write.csv(state.df, '/home/thiyaku/Projects/1111/csv/state_data_v2.csv', row.names = F)

# Save with different seperator
write.table(state.df, '/home/thiyaku/Projects/1111/csv/state_data_v3.csv', row.names = F, sep = '\t', col.names = F)