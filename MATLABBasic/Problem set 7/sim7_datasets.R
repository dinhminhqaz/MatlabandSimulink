

n.sims <- 1000
n.size <- 30
inside <- 0
for (i in 1:n.sims){ ## looping through n.sims iterations
  y <- rnorm(n.size, mean=2.5, sd=0.35)
  ## random samples from N(2.05, 0.34)
  se <- sd(y)/sqrt(n.size)
  int.95 <- mean(y) + qt(c(.025, .975), n.size-1)*se
  inside <- inside + sum(int.95[1]<2.5 & int.95[2]>2.5)
}
inside/n.sims ## fraction of times true mean inside int.95
hist(y)


?datasets
library(help = "datasets")

require("datasets")

data()

browseURL("http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html")


?chickwts
?Orange

data("Orange")

require(stats); require(graphics)
coplot(circumference ~ age | Tree, data = Orange, show.given = FALSE)
fm1 <- nls(circumference ~ SSlogis(age, Asym, xmid, scal),
           data = Orange, subset = Tree == 3)
plot(circumference ~ age, data = Orange, subset = Tree == 3,
     xlab = "Tree age (days since 1968/12/31)",
     ylab = "Tree circumference (mm)", las = 1,
     main = "Orange tree data and fitted model (Tree 3 only)")
age <- seq(0, 1600, length.out = 101)
lines(age, predict(fm1, list(age = age)))

########################################################
# Clear workspace
rm(list = ls())

