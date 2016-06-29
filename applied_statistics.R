## ----setup, echo = FALSE, message = FALSE, warning = FALSE--------------------
require(knitr)
read_chunk('r_book.R')
options(width = 80)
knit_hooks$set(purl = hook_purl)
opts_template$set(nopurl = list(purl = FALSE))
opts_template$set(dopurl = list(purl = TRUE))

## ----load_packages, message = FALSE, echo = FALSE, warning = FALSE------------
# Any package that is required by the script below is given here:
inst_pkgs = load_pkgs =  c("ggplot2","devtools","zoo", "plot3D")
inst_pkgs = inst_pkgs[!(inst_pkgs %in% installed.packages()[,"Package"])]
if(length(inst_pkgs)) install.packages(inst_pkgs)

# Dynamically load packages
pkgs_loaded = lapply(load_pkgs, require, character.only = TRUE)

## ----misc_func, echo = FALSE--------------------------------------------------

## ---- eval = FALSE------------------------------------------------------------
#  a = 3
#  b = 4
#  sqrt(a ^ 2 + b ^ 2)

## ---- echo = FALSE, eval = TRUE-----------------------------------------------
a = 3
b = 4
sqrt(a ^ 2 + b ^ 2)

## -----------------------------------------------------------------------------
3 + 2
3 - 2
3 * 2
3 / 2

## -----------------------------------------------------------------------------
3 ^ 2
2 ^ (-3)
100 ^ (1 / 2)
sqrt(1 / 2)
exp(1)

## -----------------------------------------------------------------------------
pi
exp(1)

## -----------------------------------------------------------------------------
log(10)           # natural log
log10(1000)       # base 10 log
log2(8)           # base 2 log
log(16, base = 4) # base 4 log

## -----------------------------------------------------------------------------
sin(pi / 2)
cos(0)

## ---- eval = FALSE------------------------------------------------------------
#  ?log
#  ?sin
#  ?paste
#  ?lm

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("ggplot2")

## ---- eval = FALSE------------------------------------------------------------
#  library(ggplot2)

## -----------------------------------------------------------------------------
c(1, 3, 5, 7, 8, 9)

## -----------------------------------------------------------------------------
x = c(1, 3, 5, 7, 8, 9)
x

## -----------------------------------------------------------------------------
(y = 1:100)

## -----------------------------------------------------------------------------
x
x[1]
x[3]

## -----------------------------------------------------------------------------
x[-2]

## -----------------------------------------------------------------------------
x[1:3]
x[c(1,3,4)]

## -----------------------------------------------------------------------------
x = 1:10
x + 1
2 * x
2 ^ x
sqrt(x)
log(x)

## -----------------------------------------------------------------------------
vec_1 = 1:10
vec_2 = 1:1000
vec_3 = 42

## -----------------------------------------------------------------------------
length(vec_1)
length(vec_2)
length(vec_3)

## -----------------------------------------------------------------------------
seq(from = 1.5, to = 4.2, by = 0.1)

## -----------------------------------------------------------------------------
seq(1.5, 4.2, 0.1)

## -----------------------------------------------------------------------------
rep("A", times = 10)

## -----------------------------------------------------------------------------
rep(x, times = 3)

## -----------------------------------------------------------------------------
c(x, rep(seq(1, 9, 2), 3), c(1, 2, 3), 42, 2:4)

## -----------------------------------------------------------------------------
y

## -----------------------------------------------------------------------------
mean(y)
median(y)

## -----------------------------------------------------------------------------
var(y)
sd(y)
IQR(y)
min(y)
max(y)
range(y)

## -----------------------------------------------------------------------------
x = 1:9
x
X = matrix(x, nrow = 3, ncol = 3)
X

## -----------------------------------------------------------------------------
Y = matrix(x, nrow = 3, ncol = 3, byrow = TRUE)
Y

## -----------------------------------------------------------------------------
Z = matrix(0, 2, 4)
Z

## -----------------------------------------------------------------------------
X
X[1, 2]

## -----------------------------------------------------------------------------
X[1, ]
X[, 2]

## -----------------------------------------------------------------------------
X[2, c(1, 3)]

## -----------------------------------------------------------------------------
x = 1:9
rev(x)
rep(1, 9)

## -----------------------------------------------------------------------------
cbind(x, rev(x), rep(1, 9))

## -----------------------------------------------------------------------------
rbind(x, rev(x), rep(1, 9))

## -----------------------------------------------------------------------------
x = 1:9
y = 9:1
X = matrix(x, 3, 3)
Y = matrix(y, 3, 3)
X
Y

## -----------------------------------------------------------------------------
X + Y
X - Y
X * Y
X / Y

## -----------------------------------------------------------------------------
X %*% Y
t(X)

## -----------------------------------------------------------------------------
Z = matrix(c(9, 2, -3, 2, 4, -2, -3, -2, 16), 3, byrow = TRUE)
Z
solve(Z)

## -----------------------------------------------------------------------------
X = matrix(1:6, 2, 3)
X
dim(X)
rowSums(X)
colSums(X)
rowMeans(X)
colMeans(X)

## -----------------------------------------------------------------------------
diag(Z)

## -----------------------------------------------------------------------------
diag(1:5)

## -----------------------------------------------------------------------------
diag(5)

## -----------------------------------------------------------------------------
example_data = data.frame(x = c(1, 3, 5, 7, 9, 1, 3, 5, 7, 9),
                          y = rep("Hello", 10),
                          z = rep(c("TRUE", "FALSE"), 5))

## -----------------------------------------------------------------------------
example_data

## ---- echo = FALSE------------------------------------------------------------
write.csv(example_data, "data/example_data.csv", row.names = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  example_data_from_csv = read.csv("data/example_data.csv")

## ---- eval = FALSE------------------------------------------------------------
#  library(ggplot2)

## -----------------------------------------------------------------------------
head(mpg, n = 10)

## -----------------------------------------------------------------------------
str(mpg)

## ---- eval = FALSE------------------------------------------------------------
#  ?mpg

## -----------------------------------------------------------------------------
names(mpg)

## -----------------------------------------------------------------------------
mpg$year
mpg$hwy

## -----------------------------------------------------------------------------
dim(mpg)
nrow(mpg)
ncol(mpg)

## -----------------------------------------------------------------------------
mpg[mpg$hwy > 35, c("manufacturer", "model", "year")]

## ---- eval = FALSE------------------------------------------------------------
#  subset(mpg, subset = hwy > 35, select = c("manufacturer", "model", "year"))

## ---- eval = FALSE------------------------------------------------------------
#  library(dplyr)
#  mpg %>% filter(hwy > 35) %>% select(manufacturer, model, year)

## -----------------------------------------------------------------------------
hist(mpg$cty)

## -----------------------------------------------------------------------------
hist(mpg$cty,
     xlab   = "Miles Per Gallon (City)",
     main   = "Histogram of MPG (City)",
     breaks = 12,
     col    = "dodgerblue",
     border = "darkorange")

## -----------------------------------------------------------------------------
unique(mpg$drv)

## -----------------------------------------------------------------------------
boxplot(mpg$hwy)

## -----------------------------------------------------------------------------
boxplot(hwy ~ drv, data = mpg)

## -----------------------------------------------------------------------------
boxplot(hwy ~ drv, data = mpg,
     xlab   = "Drivetrain (f = FWD, r = RWD, 4 = 4WD)",
     ylab   = "Miles Per Gallon (Highway)",
     main   = "MPG (Highway) vs Drivetrain",
     pch    = 20,
     cex    = 2,
     col    = "darkorange",
     border = "dodgerblue")

## -----------------------------------------------------------------------------
plot(hwy ~ displ, data = mpg)

## -----------------------------------------------------------------------------
plot(hwy ~ displ, data = mpg,
     xlab = "Engine Displacement (in Liters)",
     ylab = "Miles Per Gallon (Highway)",
     main = "MPG (Highway) vs Engine Displacement",
     pch  = 20,
     cex  = 2,
     col  = "dodgerblue")

## -----------------------------------------------------------------------------
dnorm(x = 3, mean = 2, sd = 5)

## -----------------------------------------------------------------------------
pnorm(q = 3, mean = 2, sd = 5)

## -----------------------------------------------------------------------------
qnorm(p = 0.975, mean = 2, sd = 5)

## -----------------------------------------------------------------------------
rnorm(n = 10, mean = 2, sd = 5)

## -----------------------------------------------------------------------------
dbinom(x = 6, size = 10, prob = 0.75)

## -----------------------------------------------------------------------------
heights = c(110, 120, 115, 136, 205, 156, 175)
weights = c(64, 67, 62, 60, 77, 70, 66)

## -----------------------------------------------------------------------------
heights < 121
heights < 121 | heights == 156

## -----------------------------------------------------------------------------
heights > 150
heights[heights > 150]
weights[heights > 150]

## -----------------------------------------------------------------------------
a = 1:10
b = 2:4
a < b

## -----------------------------------------------------------------------------
a > 5

## -----------------------------------------------------------------------------
5 + (a > 5)

## -----------------------------------------------------------------------------
sum(a > 5)

## ---- eval = FALSE------------------------------------------------------------
#  if (...) {
#    some R code
#  } else {
#    more R code
#  }

## -----------------------------------------------------------------------------
x = 1
y = 3
if (x > y) {
  z = x * y
  print("x is larger than y")
} else {
  z = x + 5 * y
  print("x is less than or equal to y")
}

z

## -----------------------------------------------------------------------------
ifelse(4 > 3, 1, 0)

## -----------------------------------------------------------------------------
fib = c(1, 1, 2, 3, 5, 8, 13, 21)
ifelse(fib > 6, "Foo", "Bar")

## -----------------------------------------------------------------------------
x = 11:15
for (i in 1:5) {
  x[i] = x[i] * 2
}

x

## -----------------------------------------------------------------------------
x = 11:15
x = x * 2
x

## ---- eval = FALSE------------------------------------------------------------
#  function_name(arg1 = 10, arg2 = 20)

## -----------------------------------------------------------------------------
standardize = function(x) {
  m = mean(x)
  std = sd(x)
  result = (x - m) / std
  result
}

## -----------------------------------------------------------------------------
(test_sample = rnorm(n = 10, mean = 2, sd = 5))
standardize(x = test_sample)

## -----------------------------------------------------------------------------
standardize = function(x) {
  (x - mean(x)) / sd(x)
}

## -----------------------------------------------------------------------------
power_of_num = function(num, power = 2) {
  num ^ power
}

## -----------------------------------------------------------------------------
power_of_num(10)
power_of_num(10, 2)
power_of_num(num = 10, power = 2)
power_of_num(power = 2, num = 10)


## -----------------------------------------------------------------------------
power_of_num(2, 10)

## ---- eval = FALSE------------------------------------------------------------
#  power_of_num(power = 5)

## -----------------------------------------------------------------------------
get_sd = function(x, biased = FALSE) {
  n = length(x) - 1 * !biased
  sqrt((1 / n) * sum((x - mean(x)) ^ 2))
}

## -----------------------------------------------------------------------------
get_sd(test_sample)
get_sd(test_sample, biased = FALSE)
sd(test_sample)

## -----------------------------------------------------------------------------
get_sd(test_sample, biased = TRUE)

## -----------------------------------------------------------------------------
capt_crisp = data.frame(weight = c(15.5, 16.2, 16.1, 15.8, 15.6, 16.0, 15.8, 15.9, 16.2))

## -----------------------------------------------------------------------------
x_bar = mean(capt_crisp$weight)
s     = sd(capt_crisp$weight)
mu_0  = 16
n     = 9

## -----------------------------------------------------------------------------
t = (x_bar - mu_0) / (s / sqrt(n))
t

## -----------------------------------------------------------------------------
pt(t, df = n - 1)

## -----------------------------------------------------------------------------
t.test(x = capt_crisp$weight, mu = 16, alternative = c("less"), conf.level = 0.95)

## -----------------------------------------------------------------------------
capt_test_results = t.test(capt_crisp$weight, mu = 16,
                           alternative = c("two.sided"), conf.level = 0.95)

## -----------------------------------------------------------------------------
names(capt_test_results)

## -----------------------------------------------------------------------------
capt_test_results$conf.int

## -----------------------------------------------------------------------------
qt(0.975, df = 8)

## -----------------------------------------------------------------------------
c(mean(capt_crisp$weight) - qt(0.975, df = 8) * sd(capt_crisp$weight) / sqrt(9),
  mean(capt_crisp$weight) + qt(0.975, df = 8) * sd(capt_crisp$weight) / sqrt(9))

## -----------------------------------------------------------------------------
x = c(70, 82, 78, 74, 94, 82)
n = length(x)

## -----------------------------------------------------------------------------
y = c(64, 72, 60, 76, 72, 80, 84, 68)
m = length(y)

## -----------------------------------------------------------------------------
x_bar = mean(x)
s_x   = sd(x)
y_bar = mean(y)
s_y   = sd(y)

## -----------------------------------------------------------------------------
s_p = sqrt(((n - 1) * s_x ^ 2 + (m - 1) * s_y ^ 2) / (n + m - 2))

## -----------------------------------------------------------------------------
t = ((x_bar - y_bar) - 0) / (s_p * sqrt(1 / n + 1 / m))
t

## -----------------------------------------------------------------------------
1 - pt(t, df = n + m - 2)

## -----------------------------------------------------------------------------
t.test(x, y, alternative = c("greater"), var.equal = TRUE)

## -----------------------------------------------------------------------------
t_test_data = data.frame(values = c(x, y),
                         group  = c(rep("A", length(x)), rep("B", length(y))))

## -----------------------------------------------------------------------------
t_test_data

## -----------------------------------------------------------------------------
t.test(values ~ group, data = t_test_data,
       alternative = c("greater"), var.equal = TRUE)

## -----------------------------------------------------------------------------
pnorm(2, mean = 1, sd = sqrt(0.32)) - pnorm(0, mean = 1, sd = sqrt(0.32))

## -----------------------------------------------------------------------------
set.seed(42)
num_samples = 10000
differences = rep(0, num_samples)

## -----------------------------------------------------------------------------
for (s in 1:num_samples) {
  x1 = rnorm(n = 25, mean = 6, sd = 2)
  x2 = rnorm(n = 25, mean = 5, sd = 2)
  differences[s] = mean(x1) - mean(x2)
}

## -----------------------------------------------------------------------------
mean(0 < differences & differences < 2)

## -----------------------------------------------------------------------------
hist(differences, breaks = 20, 
     main   = "Empirical Distribution of D",
     xlab   = "Simulated Values of D",
     col    = "dodgerblue",
     border = "darkorange")

## -----------------------------------------------------------------------------
mean(differences)
var(differences)

## -----------------------------------------------------------------------------
set.seed(42)
diffs = replicate(10000, mean(rnorm(25, 6, 2)) - mean(rnorm(25, 5, 2)))

## -----------------------------------------------------------------------------
mean(differences == diffs)

## -----------------------------------------------------------------------------
set.seed(1337)
mu          = 10
sample_size = 50
samples     = 100000
x_bars      = rep(0, samples)

## -----------------------------------------------------------------------------
for(i in 1:samples){
  x_bars[i] = mean(rpois(sample_size, lambda = mu))
}

## -----------------------------------------------------------------------------
x_bar_hist = hist(x_bars, breaks = 50, 
                  main = "Histogram of Sample Means",
                  xlab = "Sample Means")

## -----------------------------------------------------------------------------
c(mean(x_bars), mu)

## -----------------------------------------------------------------------------
c(var(x_bars), mu / sample_size)

## -----------------------------------------------------------------------------
c(sd(x_bars), sqrt(mu) / sqrt(sample_size))

## -----------------------------------------------------------------------------
mean(x_bars > mu - 2 * sqrt(mu) / sqrt(sample_size) &
     x_bars < mu + 2 * sqrt(mu) / sqrt(sample_size))

## -----------------------------------------------------------------------------
shading = ifelse(x_bar_hist$breaks > mu - 2 * sqrt(mu) / sqrt(sample_size) & 
                   x_bar_hist$breaks < mu + 2 * sqrt(mu) / sqrt(sample_size),
                  "darkorange", "dodgerblue")

x_bar_hist = hist(x_bars, breaks = 50, col = shading,
                  main = "Histogram of Sample Means, Two Standard Deviations",
                  xlab = "Sample Means")

## ---- eval = FALSE------------------------------------------------------------
#  View(cars)

## -----------------------------------------------------------------------------
str(cars)

## -----------------------------------------------------------------------------
dim(cars)
nrow(cars)
ncol(cars)

## ---- eval = FALSE------------------------------------------------------------
#  ?cars

## -----------------------------------------------------------------------------
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 3,
     col  = "dodgerblue")

## ----underfit_plot, echo = FALSE----------------------------------------------
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 3,
     col  = "dodgerblue")
underfit_model = lm(dist ~ 1, data = cars)
abline(underfit_model, lwd = 3, col = "darkorange")

## ----overfit_plot, echo = FALSE-----------------------------------------------
overfit_model = lm(dist ~ poly(speed, 18), data = cars)
x = seq(-10, 50, length.out = 200)
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 3,
     col  = "dodgerblue")
lines(x, predict(overfit_model, data.frame(speed = x)), lwd = 2, col = "darkorange")

## ----goodfit_plot, echo = FALSE-----------------------------------------------
stop_dist_model = lm(dist ~ speed, data = cars)
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 3,
     col  = "dodgerblue")
abline(stop_dist_model, lwd = 3, col = "darkorange")

## -----------------------------------------------------------------------------
x = cars$speed
y = cars$dist

## -----------------------------------------------------------------------------
Sxy = sum((x - mean(x)) * (y - mean(y)))
Sxx = sum((x - mean(x)) ^ 2)
Syy = sum((y - mean(y)) ^ 2)
c(Sxy, Sxx, Syy)

## -----------------------------------------------------------------------------
beta_1_hat = Sxy / Sxx
beta_0_hat = mean(y) - beta_1_hat * mean(x)
c(beta_0_hat, beta_1_hat)

## -----------------------------------------------------------------------------
unique(cars$speed)

## -----------------------------------------------------------------------------
beta_0_hat + beta_1_hat * 8

## -----------------------------------------------------------------------------
8 %in% unique(cars$speed)
21 %in% unique(cars$speed)

## -----------------------------------------------------------------------------
min(cars$speed) < 21 & 21 < max(cars$speed)

## -----------------------------------------------------------------------------
beta_0_hat + beta_1_hat * 21

## -----------------------------------------------------------------------------
range(cars$speed)
range(cars$speed)[1] < 50 & 50 < range(cars$speed)[2] 

## -----------------------------------------------------------------------------
beta_0_hat + beta_1_hat * 50

## -----------------------------------------------------------------------------
which(cars$speed == 8)
cars[5, ]
cars[which(cars$speed == 8), ]

## -----------------------------------------------------------------------------
16 - (beta_0_hat + beta_1_hat * 8)

## -----------------------------------------------------------------------------
y_hat = beta_0_hat + beta_1_hat * x
e     = y - y_hat
n     = length(e)
s2_e  = sum(e^2) / (n - 2)
s2_e

## -----------------------------------------------------------------------------
s_e = sqrt(s2_e)
s_e

## -----------------------------------------------------------------------------
SST   = sum((y - mean(y)) ^ 2)
SSReg = sum((y_hat - mean(y)) ^ 2)
SSE   = sum((y - y_hat) ^ 2)
c(SST = SST, SSReg = SSReg, SSE = SSE)

## -----------------------------------------------------------------------------
SSE / (n - 2)

## -----------------------------------------------------------------------------
s2_e == SSE / (n - 2)

## -----------------------------------------------------------------------------
R2 = SSReg / SST
R2

## ---- echo = FALSE, message = FALSE, warning = FALSE--------------------------
## TODO: this code and be made much better
# show for different R^2 values?
#

set.seed(42)
generate_data <- function(int = 1,
                          slope = 2,
                          sigma = 5,
                          n_obs = 15,
                          x_min = 0,
                          x_max = 10) {
  x <- seq(x_min, x_max, length.out = n_obs)
  y <- int + slope * x + rnorm(n_obs, 0, sigma)
  fit <- lm(y ~ x)
  y_hat <- fitted(fit)
  y_bar <- rep(mean(y), n_obs)
  data.frame(x, y, y_hat, y_bar)
}

plot_total_dev <- function(reg_data) {
  plot(reg_data$x, reg_data$y, main = "SST (Sum of Squares Total)", 
       xlab = "x", ylab = "y", pch = 20, cex = 3, col = "grey")
  arrows(reg_data$x, reg_data$y_bar,
         reg_data$x, reg_data$y_hat,
         col = 'darkorange', lwd = 1, length = 0.2, angle = 20)
  arrows(reg_data$x, reg_data$y_hat,
         reg_data$x, reg_data$y,
         col = 'dodgerblue', lwd = 2, lty = 2, length = 0.2, angle = 20)
  abline(h = mean(reg_data$y), lwd = 2,col = "grey")
  abline(lm(y ~ x, data = reg_data), lwd = 2, col = "grey")
}

plot_unexp_dev <- function(reg_data) {
  plot(reg_data$x, reg_data$y, main = "SSE (Sum of Squares Error)",
       xlab = "x", ylab = "y", pch = 20, cex = 3, col = "grey")
  arrows(reg_data$x, reg_data$y_hat,
         reg_data$x, reg_data$y,
         col = 'dodgerblue', lwd = 1, length = 0.2, angle = 20)
  abline(lm(y ~ x, data = reg_data), lwd = 2, col = "grey")
}

plot_exp_dev <- function(reg_data) {
  plot(reg_data$x, reg_data$y, main = "SSReg (Sum of Squares Regression)", 
  xlab = "x", ylab = "y", pch = 20, cex = 3, col = "grey")
  arrows(reg_data$x, reg_data$y_bar,
         reg_data$x, reg_data$y_hat,
         col = 'darkorange', lwd = 1, length = 0.2, angle = 20)
  abline(lm(y ~ x, data = reg_data), lwd = 2, col = "grey")
  abline(h = mean(reg_data$y), col = "grey")
}

## ---- echo=FALSE, message=FALSE, warning=FALSE--------------------------------
plot_data <- generate_data(sigma = 2)

## ---- echo=FALSE, message=FALSE, warning=FALSE--------------------------------
plot_exp_dev(plot_data)
plot_unexp_dev(plot_data)
plot_total_dev(plot_data)

## ---- echo=FALSE, message=FALSE, warning=FALSE--------------------------------
plot_data <- generate_data(sigma = 6)

## ---- echo=FALSE, message=FALSE, warning=FALSE--------------------------------
plot_exp_dev(plot_data)
plot_unexp_dev(plot_data)
plot_total_dev(plot_data)

## -----------------------------------------------------------------------------
stop_dist_model = lm(dist ~ speed, data = cars)

## -----------------------------------------------------------------------------
stop_dist_model

## -----------------------------------------------------------------------------
c(beta_0_hat, beta_1_hat)

## -----------------------------------------------------------------------------
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 3,
     col  = "dodgerblue")
abline(stop_dist_model, lwd = 3, col = "darkorange")

## -----------------------------------------------------------------------------
names(stop_dist_model)

## -----------------------------------------------------------------------------
stop_dist_model$residuals

## -----------------------------------------------------------------------------
coef(stop_dist_model)
resid(stop_dist_model)
fitted(stop_dist_model)

## -----------------------------------------------------------------------------
summary(stop_dist_model)

## -----------------------------------------------------------------------------
names(summary(stop_dist_model))

## -----------------------------------------------------------------------------
summary(stop_dist_model)$r.squared

## -----------------------------------------------------------------------------
summary(stop_dist_model)$sigma

## -----------------------------------------------------------------------------
predict(stop_dist_model, data.frame(speed = 8))

## -----------------------------------------------------------------------------
predict(stop_dist_model, data.frame(speed = c(8, 21, 50)))

## -----------------------------------------------------------------------------
predict(stop_dist_model, data.frame(speed = cars$speed))

## -----------------------------------------------------------------------------
predict(stop_dist_model)

## -----------------------------------------------------------------------------
fitted(stop_dist_model)

## -----------------------------------------------------------------------------
n       = 20
beta_0  = 5
beta_1  = 2
sigma   = 1

## -----------------------------------------------------------------------------
epsilon = rnorm(n, mean = 0, sd = sigma)

## -----------------------------------------------------------------------------
x = runif(n, 0, 10)

## -----------------------------------------------------------------------------
y = beta_0 + beta_1 * x + epsilon

## -----------------------------------------------------------------------------
sim_fit = lm(y ~ x)
coef(sim_fit)

## -----------------------------------------------------------------------------
plot(y ~ x)
abline(sim_fit)

## -----------------------------------------------------------------------------
sim_slr = function(n, beta_0 = 10, beta_1 = 5, sigma = 1, xmin = 0, xmax = 10) {
  epsilon = rnorm(n, mean = 0, sd = sigma)
  x       = runif(n, xmin, xmax)
  y       = beta_0 + beta_1 * x + epsilon
  data.frame(predictor = x, response = y)
}

## -----------------------------------------------------------------------------
sim_data = sim_slr(n = 20, beta_0 = 5, beta_1 = 2, sigma = 1)

## -----------------------------------------------------------------------------
head(sim_data)

## -----------------------------------------------------------------------------
sim_fit = lm(response ~ predictor, data = sim_data)
coef(sim_fit)

## -----------------------------------------------------------------------------
plot(response ~ predictor, data = sim_data,
     xlab = "Simulated Predictor Variable",
     ylab = "Simulated Response Variable",
     main = "Simulated Regression Data",
     pch  = 20,
     cex  = 2,
     col  = "dodgerblue")
abline(sim_fit, lwd = 3, col = "darkorange")

## -----------------------------------------------------------------------------
stop_dist_model = lm(dist ~ speed, data = cars)
summary(stop_dist_model)

## -----------------------------------------------------------------------------
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 2,
     col  = "dodgerblue")
abline(stop_dist_model, lwd = 5, col = "darkorange")

## -----------------------------------------------------------------------------
set.seed(42)
sample_size = 100 # this is n
x = seq(-1, 1, length = sample_size)
Sxx = sum((x - mean(x)) ^ 2)

## -----------------------------------------------------------------------------
beta_0 = 3
beta_1 = 6
sigma  = 2

## -----------------------------------------------------------------------------
(var_beta_1_hat = sigma ^ 2 / Sxx)
(var_beta_0_hat = sigma ^ 2 * (1 / sample_size + mean(x) ^ 2 / Sxx))

## -----------------------------------------------------------------------------
num_samples = 10000
beta_0_hats = rep(0, num_samples)
beta_1_hats = rep(0, num_samples)

for(i in 1:num_samples) {
  eps = rnorm(sample_size, mean = 0, sd = sigma)
  y   = beta_0 + beta_1 * x + eps
  
  sim_model = lm(y ~ x)
  
  beta_0_hats[i] = coef(sim_model)[1]
  beta_1_hats[i] = coef(sim_model)[2]
}

## -----------------------------------------------------------------------------
mean(beta_1_hats) # empirical mean
beta_1            # true mean
var(beta_1_hats)  # empirical variance
var_beta_1_hat    # true variance

## -----------------------------------------------------------------------------
# note need to use prob = TRUE
hist(beta_1_hats, prob = TRUE, breaks = 20, 
     xlab = expression(hat(beta)[1]), main = "", border = "dodgerblue")
curve(dnorm(x, mean = beta_1, sd = sqrt(var_beta_1_hat)), 
      col = "darkorange", add = TRUE, lwd = 3)

## -----------------------------------------------------------------------------
mean(beta_0_hats) # empirical mean
beta_0            # true mean
var(beta_0_hats)  # empirical variance
var_beta_0_hat    # true variance

## -----------------------------------------------------------------------------
hist(beta_0_hats, prob = TRUE, breaks = 20, 
     xlab = expression(hat(beta)[0]), main = "", border = "dodgerblue")
curve(dnorm(x, mean = beta_0, sd = sqrt(var_beta_0_hat)),
      col = "darkorange", add = TRUE, lwd = 3)

## -----------------------------------------------------------------------------
par(mar = c(5, 5, 1, 1)) # adjusted plot margins, otherwise the "hat" does not display
plot(cumsum(beta_1_hats) / (1:length(beta_1_hats)), type = "l", ylim = c(5.95, 6.05),
     xlab = "Number of Simulations",
     ylab = expression("Empirical Mean of " ~ hat(beta)[1]),
     col  = "dodgerblue")
abline(h = 6, col = "darkorange", lwd = 2)

par(mar = c(5, 5, 1, 1)) # adjusted plot margins, otherwise the "hat" does not display
plot(cumsum(beta_0_hats) / (1:length(beta_0_hats)), type = "l", ylim = c(2.95, 3.05),
     xlab = "Number of Simulations",
     ylab = expression("Empirical Mean of " ~ hat(beta)[0]),
     col  = "dodgerblue")
abline(h = 3, col = "darkorange", lwd = 2)

## -----------------------------------------------------------------------------
stop_dist_model = lm(dist ~ speed, data = cars)
summary(stop_dist_model)

## -----------------------------------------------------------------------------
names(summary(stop_dist_model))
summary(stop_dist_model)$coefficients

## -----------------------------------------------------------------------------
summary(stop_dist_model)$coefficients[2,]

## -----------------------------------------------------------------------------
summary(stop_dist_model)$coefficients[1,]

## -----------------------------------------------------------------------------
stop_dist_model_test_info = summary(stop_dist_model)$coefficients

beta_0_hat      = stop_dist_model_test_info[1,1] # Estimate
beta_0_hat_se   = stop_dist_model_test_info[1,2] # Std. Error
beta_0_hat_t    = stop_dist_model_test_info[1,3] # t value
beta_0_hat_pval = stop_dist_model_test_info[1,4] # Pr(>|t|)

beta_1_hat      = stop_dist_model_test_info[2,1] # Estimate
beta_1_hat_se   = stop_dist_model_test_info[2,2] # Std. Error
beta_1_hat_t    = stop_dist_model_test_info[2,3] # t value
beta_1_hat_pval = stop_dist_model_test_info[2,4] # Pr(>|t|)

## -----------------------------------------------------------------------------
(beta_1_hat - 0) / beta_1_hat_se
beta_1_hat_t

## -----------------------------------------------------------------------------
2 * pt(abs(beta_1_hat_t), df = length(resid(stop_dist_model)) - 2, lower.tail = FALSE)
beta_1_hat_pval

## ---- echo = FALSE------------------------------------------------------------
set.seed(42)
x = seq(-1, 1, 0.01)
y = 5 + 4 * x ^ 2 + rnorm(length(x), 0, 0.5)
plot(x, y)
abline(lm(y ~ x))
#summary(lm(y ~ x))$coef[2,4]

## -----------------------------------------------------------------------------
confint(stop_dist_model, level = 0.99)

## ---- eval = FALSE------------------------------------------------------------
#  confint(stop_dist_model, level = 0.99)[1,]
#  confint(stop_dist_model, level = 0.99)[1,1]
#  confint(stop_dist_model, level = 0.99)[1,2]
#  confint(stop_dist_model, parm = "(Intercept)", level = 0.99)
#  confint(stop_dist_model, level = 0.99)[2,]
#  confint(stop_dist_model, level = 0.99)[2,1]
#  confint(stop_dist_model, level = 0.99)[2,2]
#  confint(stop_dist_model, parm = "speed", level = 0.99)

## -----------------------------------------------------------------------------
new_speeds = data.frame(speed = c(5, 21))
predict(stop_dist_model, newdata = new_speeds, 
        interval = c("confidence"), level = 0.99)

## -----------------------------------------------------------------------------
predict(stop_dist_model, newdata = new_speeds, 
        interval = c("prediction"), level = 0.99)

## -----------------------------------------------------------------------------
speed_grid = seq(min(cars$speed), max(cars$speed), by = 0.01)
dist_ci_band = predict(stop_dist_model, 
                           newdata = data.frame(speed = speed_grid), 
                           interval = "confidence", level = 0.99)
dist_pi_band = predict(stop_dist_model, 
                           newdata = data.frame(speed = speed_grid), 
                           interval = "prediction", level = 0.99) 

plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch  = 20,
     cex  = 2,
     col  = "dodgerblue",
     ylim = c(-50, 140))
abline(stop_dist_model, lwd = 5, col = "darkorange")

lines(speed_grid, dist_ci_band[,"lwr"], col = "red", lwd = 3, lty = 2)
lines(speed_grid, dist_ci_band[,"upr"], col = "red", lwd = 3, lty = 2)
lines(speed_grid, dist_pi_band[,"lwr"], col = "green", lwd = 3, lty = 3)
lines(speed_grid, dist_pi_band[,"upr"], col = "green", lwd = 3, lty = 3)
points(mean(cars$speed), mean(cars$dist), pch = "+", cex = 3)

## -----------------------------------------------------------------------------
summary(stop_dist_model)

## -----------------------------------------------------------------------------
anova(stop_dist_model)

## -----------------------------------------------------------------------------
anova(lm(dist ~ 1, data = cars), lm(dist ~ speed, data = cars))

