data = read.csv("Advertising.csv")
x = data$TV
y = data$Sales
#Plot the original data
plot(x,y,main = "Sales vs TV")
#Standard linear regression
lr = lm(y~x)
abline(lr$coefficients, col = "red")
summary = summary(lr)
summary
coeff = summary$coefficients
rse = summary$sigma
rsquare = summary$r.squared
f_stat = summary$fstatistic
save(summary,coeff,rse,rsquare,f_stat, file = "regression.RData")
