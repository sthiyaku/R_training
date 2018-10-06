# Let's get started
print('Hello')

# Arithmatice operators
5 + 2
5 - 2
5 / 2
5 * 2


# Variables
a <- 5
b <- 2
b - a
b + a
b * a
b / a

# Save reuslt in a variable
num1 = 5
num2 = 2

sum.val <- num1 + num2
diff.val <- num1 - num2
mul.val <- num1 * num2
div.val <- num1 / num2


# Vectors
num1 <- 1
num2 <- 3
num3 <- 12
num4 <- 10

nums <- c(num1, num2, num3, num4)

# Alternate way
nums <- c(1, 3, 12, 10)

# Sum of all number 
sum(nums)
mean(nums)

# Missing values / NA in data
nums <- c(1, 3, NA, 10)
sum(nums)
mean(nums)


# Logical and

TRUE && TRUE
TRUE && FALSE
FALSE && TRUE
FALSE && FALSE

# Logical or

TRUE || TRUE
TRUE || FALSE
FALSE || TRUE
FALSE || FALSE

# Compare list
c(T, T, F, F) & c(T ,F, T, F)
c(T, T, F, F) && c(T ,F, T, F)

c(T, T, F, F) | c(T ,F, T, F)
c(T, T, F, F) || c(T ,F, T, F)

# & and | compares element by element and returns list vector of results
# && and || return only single value

# Matrix
foo <- matrix(1, 3, 3)
print(foo)

foo <- matrix(c(1, 2, 3), 3, 3)
print(foo)

# Get sequence of numbers
print(1:9)

# save the sequence as matrix
foo <- matrix(c(1:9), 3, 3)
print(foo)

# Creating random numbers
runif(n = 10, min = 1, max = 10)
runif(n = 100, min = 1, max = 10)

# Create sequence of equally spaced 'n' numbers
seq(from = 1, to = 10, by = 2)
seq(from = 1, to = 10, length.out = 2)
seq(to = 10, length.out = 10, by = 2)

