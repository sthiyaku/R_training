# Set seed to generate same pseudo random number
set.seed(100)

# Generate r andom numbers
area <- runif(n = 40, min = 32, max = 342239)
print(area)
population <- runif(n = 40,min = 64, max = 399810)

print(population)
# Create 40 values for state, but takes time
# c('state1', 'state2', .... ' state40')
# Create a sequence of  number
state.num <- 1:40
# Create a string 
start.name <- 'State'
# Join string and integer using paste function
paste(start.name, state.num)
paste(start.name, state.num, sep = '_')
# Join string and integer using sprintf
# %s -> string
# %d -> decimal
# %f -> float
# Just add as string
sprintf('Some %s text', 1:40)
# Add decimal with always 2 digit
sprintf('Some %02d text', 1:40)
# Add float rounded to 3 decimal
sprintf('Some %.03f text', 1:40)


# Create names and save in variable names
names <- sprintf('State_%02d', 1:40)
print(names)
# Save as data frame
state.df <- data.frame(Name = names, Area = area, Population = population)
# View dataframe in a interactive tab
View(state.df)
# Print the whole data frame
print(state.df)
# Print the starting n lines
head(state.df)
head(state.df, n = 10)
head(state.df, n = 2)
# print end n lines
tail(state.df, n = 4)

# Print colnames and rownames of data frame
print(colnames(state.df))
print(rownames(state.df))

# Change colnames of data
colnames(state.df) <- c('State name', 'Area (sq. km)', 'Population')
# Change column name of particular column
colnames(state.df)[2] <- c('Area')



# Print a particular row in data frame
print(state.df[1,])
# Print a particular column in data frame
print(state.df[,3])
# Print particualr row and column
print(state.df[c(1:5), c(1,3)])
# Change order of columns
print(state.df[,c(3:1)])

# Swap column orders and save
state.df.rev <- state.df[,c(3:1)]

# Save data frame as csv file with row names
write.csv(x = state.df, 
          file = '/home/thiyaku/Projects/1111/R_training/csv/state_data_v1.csv')

# Save data frame as csv file without row names
write.csv(state.df, '/home/thiyaku/Projects/1111/R_training/csv/state_data_v2.csv',
          row.names = F)

# Save with different seperator
write.table(state.df, 
            '/home/thiyaku/Projects/1111/R_training/csv/state_data_v3.csv',
            row.names = F, sep = '\t', col.names = F)
