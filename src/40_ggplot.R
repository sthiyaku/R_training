# Installing ggplot2 from internet
install.packages('ggplot2')

# install from source
# install.packages(path_to_file, repos = NULL, type="source")

# Loading the library
library(ggplot2)

# Name of CSV file
in.file <- '/home/thiyaku/Projects/1111/csv/state_data_v1.csv'

# read CSV file as data frame without header
in.df <- read.csv(in.file, stringsAsFactors = F)


# Create points plot using ggplot
g <- ggplot()
g <- g + geom_point(aes(x = in.df$Area, y = in.df$Population))
print(g)

# Alternate method to plot 
g <- ggplot(in.df)
g <- g + geom_point(aes(x = Area, y = Population))
print(g)

# Writing all in single line
p <- ggplot() + geom_point(aes(x = in.df$Area, y = in.df$Population))
print(p)


# Pass data frame in first step
k <- ggplot(in.df)
k <-k + geom_point(aes(x = Area, y = Population))
print(k)
# plot lines


g <- ggplot()
g <- g + geom_line(aes(x = in.df$Area, y = in.df$Population))
print(g)

# Create point and line plots
g <- ggplot()
g <- g + geom_point(aes(x = in.df$Area, y = in.df$Population), col = 'RED')
g <- g + geom_line(aes(x = in.df$Area, y = in.df$Population), col = '#FF0000')
g <- g + geom_line(aes(x = in.df$Area, y = in.df$Population), col = 'blue')

# Change size of line and points
g + geom_line(aes(x = in.df$Area, y = in.df$Population), col = '#FF0000', size = 1)
g + geom_point(aes(x = in.df$Area, y = in.df$Population), col = '#FF0000', size = 10)

g <- g + xlab('Area') + ylab('Population') + ggtitle('Area Vs Population')
print(g)

g <- ggplot()
g <- g + geom_line(aes(x = in.df$Area, y = in.df$Population), col = '#FF0000')





# Add expression in label
g <- g + xlab(expression(paste("Area ", m^{2})))

# number of states
n <- length(in.df$Name)
# seq(1, n)
# 1:n
# Create multiple lines in singple graphs
g <- ggplot()
g <- g + geom_point(aes(x = 1:n, y = in.df$Area), col = 'RED')
g <- g + geom_line(aes(x = seq(1, n), y = in.df$Area), col = 'RED')
g <- g + geom_point(aes(x = 1:n, y = in.df$Population), col = '#00FF00')
g <- g + geom_line(aes(x = 1:n, y = in.df$Population), col = '#00FF00')

g <- g + xlab(expression(paste("Area ", m^{2}))) + ylab('Population') + ggtitle('Area Vs Population')
print(g)

# Adding legend 
g <- ggplot()
g <- g + geom_point(aes(x = 1:n, y = in.df$Area, col = 'Area'))
g <- g + geom_line(aes(x = 1:n, y = in.df$Area, col = 'Area'))
g <- g + geom_point(aes(x = 1:n, y = in.df$Population, col = 'Population'))
g <- g + geom_line(aes(x = 1:n, y = in.df$Population, col = 'Population'))
g <- g + xlab('States') + ylab('') + ggtitle('Area Vs Population')

print(g)

# Change color in legend

g <- g + scale_color_manual('Legend', values = c('Area' = 'Blue', 'Population' = 'Green'))



# Change X-axis  label
g <- g + scale_x_continuous(labels = in.df$Name, breaks = 1:n)


# Rotate X-axis label
g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g <- g + xlab('Sates') + ylab('')

# Save ggplot
ggsave('/home/thiyaku/Projects/1111/fig/plot_practice.png')
# Alternate method to plot 
# g <- ggplot(in.df)
# g <- g + geom_point(aes(x = Area, y = Population))
# print(g)

# Writing all in single line
# g <- ggplot() + geom_point(aes(x = in.df$Area, y = in.df$Population))
# plot lines


g <- ggplot()
g <- g + geom_line(aes(x = in.df$Area, y = in.df$Population))
print(g)

# Create point and line plots
g <- ggplot()
g <- g + geom_point(aes(x = in.df$Area, y = in.df$Population), col = 'RED')
g <- g + geom_line(aes(x = in.df$Area, y = in.df$Population), col = '#FF0000')
g <- g + xlab('Area') + ylab('Population') + ggtitle('Area Vs Population')
print(g)


# Add expression in label
g <- g + xlab(expression(paste("Area ", m^{2})))

# number of states
n <- length(in.df$Name)
# Create multiple lines in singple graphs
g <- ggplot()
g <- g + geom_point(aes(x = 1:n, y = in.df$Area), col = 'RED')
g <- g + geom_line(aes(x = 1:n, y = in.df$Area), col = 'RED')
g <- g + geom_point(aes(x = 1:n, y = in.df$Population), col = '#00FF00')
g <- g + geom_line(aes(x = 1:n, y = in.df$Population), col = '#00FF00')

print(g)

# Adding legend 
g <- ggplot()
g <- g + geom_point(aes(x = 1:n, y = in.df$Area, col = 'Area'))
g <- g + geom_line(aes(x = 1:n, y = in.df$Area, col = 'Area'))
g <- g + geom_point(aes(x = 1:n, y = in.df$Population, col = 'Population'))
g <- g + geom_line(aes(x = 1:n, y = in.df$Population, col = 'Population'))

print(g)

# Change color in legend

g <- g + scale_color_manual('Legend', values = c('Area' = 'Blue', 'Population' = 'Green'))



# Change X-axis  label
g <- g + scale_x_continuous(labels = in.df$Name, breaks = 1:n)


# Rotate X-axis label
g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g <- g + xlab('Sates') + ylab('')

# Save ggplot
ggsave('/home/thiyaku/Projects/1111/fig/plot_practice.png')
