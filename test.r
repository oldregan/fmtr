# Assessing R2 shrinkage using 10-Fold Cross-Validation

fit <- lm(y ~ x1 + x2 + x3, data = mydata)

library(bootstrap)
# define functions
theta.fit <- function(x, y) {
    lsfit(x, y)
}
theta.predict <- function(fit, x) {
    cbind(1, x) %*% fit$coef
}

# matrix of predictors
X <- as.matrix(mydata[c("x1", "x2", "x3")])
# vector of predicted values
y <- as.matrix(mydata[c("y")])

results <- crossval(X, y, theta.fit, theta.predict, ngroup = 10)
cor(y, fit$fitted.values)^2  # raw R2 
cor(y, results$cv.fit)^2  # cross-validated R2
