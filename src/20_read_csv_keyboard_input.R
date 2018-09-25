# Name of CSV file
in.file <- '/home/thiyaku/Projects/1111/csv/state_data_v2.csv'
in.file2 <- '/home/thiyaku/Projects/1111/csv/state_data_v3.csv'

# read CSV file as data frame
in.df <- read.csv(in.file)
print(in.df$State.name) # String is treated as factor

# Dont treat string as factor
in.df <- read.csv(in.file, stringsAsFactors = F)
print(in.df$State.name)
# Read two columns
in.df[,c(1,3)]

# read CSV file as data frame header without header
in.df <- read.csv(in.file2, stringsAsFactors = F, header = F)
View(in.df)

in.df <- read.csv(in.file2, stringsAsFactors = F, header = T, sep='\t')
View(in.df)

in.df <- read.csv(in.file2, stringsAsFactors = F, header = F, sep='\t')
View(in.df)


# read CSV file skipping first 'n' rows
in.df <- read.csv(in.file, stringsAsFactors = F, header = F, skip = 2)
head(in.df)
in.df <- read.csv(in.file, stringsAsFactors = F, header = F, skip = 5)
head(in.df)
#View(in.df)


# Enter input from keyboard

num <- readline("How many lines do you want to skip? > ")
num <- as.numeric(num)

in.df <- read.csv(in.file, skip = num)
head(in.df)


headerInfo <- readline("Does the file has header information? \n 1) Enter 'Y' for yes \n 2) Enter 'N' for No > ")

# Flag for loop
# break

loopFlag = TRUE
while(loopFlag){
  
  if(headerInfo == 'Y'){
    headerFlag = TRUE
    loopFlag = FALSE
  } else if(headerInfo == 'N'){
    headerFlag = FALSE
    # Break out of loop
    break # loopFlag = FALSE 
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