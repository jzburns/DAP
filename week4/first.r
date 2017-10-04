# correlation coefficient analysis

x <- c(4,1,7,2,3,9,6,5,4,9)

# y is the dependent variable

y <- c(8,9,8,1,2,3,2,5,6,7)

res <- cor(x,y)

print(res)

# correlation coefficient calculation
# is order dependent and movng the order
# around affects the coefficient calculation
