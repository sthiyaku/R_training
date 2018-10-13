# Remove one variable bu=y one from memory
rm(list = 'state.df')
rm(list = 'state.df.rev')
# List all the variables
print(ls())
# Remove all the variables from memory
rm(list = ls())

# Name of CSV file
in.file <- '/home/thiyaku/Projects/1111/R_training/csv/state_data_v2.csv'

# read CSV file as data frame
in.df <- read.csv(in.file)
# PRint the csv as data frame
print(in.df)
# Print particular column using the column name
# data.frame.name$column.name
print(in.df$State.name) # String is treated as factor
# Convert to numeric
as.numeric('23')
# Get numers from factors
as.numeric(in.df$State.name) # Function convert numeric

# Convert number to character
as.character(1)
# Get character from factor
as.character(in.df$State.name)
# Dont treat string as factor
in.df <- read.csv(in.file, stringsAsFactors = F)
print(in.df$State.name)
# as.numeric will return NA 
as.numeric(in.df$State.name)


in.file2 <- '/home/thiyaku/Projects/1111/R_training/csv/state_data_v3.csv'

# 
in.df <- read.csv(in.file2, stringsAsFactors = F)
head(in.df)
# read CSV file as data frame header without header
in.df <- read.csv(in.file2, stringsAsFactors = F, header = F)
head(in.df)
# Read csv file having seperator other than ','
in.df <- read.csv(in.file2, stringsAsFactors = F, header = F, sep='\t')
head(in.df)


# read CSV file skipping first 'n' rows
in.df <- read.csv(in.file, stringsAsFactors = F, header = F, skip = 2)
head(in.df)
in.df <- read.csv(in.file, stringsAsFactors = F, header = F, skip = 5)
head(in.df)
#View(in.df)


# Enter input from keyboard
num <- readline("How many lines do you want to skip? > ")
print(num)
num <- as.numeric(num)

in.df <- read.csv(in.file, header = F, skip = num)
head(in.df)


headerInfo <- readline("Does the file has header information? \n /
                       1) Enter 'Y' for yes \n 2) Enter 'N' for No > ")

# Check whether header info is Y
print(headerInfo == 'Y')

# Check whether header info is N
print(headerInfo == 'N')

if(headerInfo == 'Y'){
  print('User entered Yes')
}else if(headerInfo == 'N'){
  print('User entered No')
}else{
  print(sprintf('User entered invalid input: %s', headerInfo))
}
while(TRUE){
  if(headerInfo == 'Y'){
    print('User entered Yes')
    break # will terminate the loop and jumps out
  }else if(headerInfo == 'N'){
    print('User entered No')
    break # will terminate the loop and jumps out
  }else{
    print(sprintf('User entered invalid input: %s', headerInfo))
    print('Please enter valid input')
    headerInfo <- readline("Does the file has header information? \n /
                       1) Enter 'Y' for yes \n 2) Enter 'N' for No > ")
    
  } 

  }
# Create a loop to ask input from user again
loopFlag = TRUE

while(loopFlag){
  if(headerInfo == 'Y'){
    headerFlag = TRUE # variable to pass to read csv file
    loopFlag = FALSE # flag becomes false
  } else if(headerInfo == 'N'){
    headerFlag = FALSE
    loopFlag = FALSE
    
  }
  else{
    print("Please enter valid input 'Y' or 'N'")
    headerInfo <- readline("Does the file has header information? \n 1) Enter 'Y' for Yes \n 2) Enter 'N' for No > ")
  }
  # break # Break out of loop block
  next # Skip the remaining part and jump to next loop
  print('1')
}
in.df <- read.csv(in.file, skip = num, header = headerFlag)
# For loop to explain next
for(i in 1:4){
  if(i %% 2){
    print('if')
    next
    #break
  }
  print(i)
}

