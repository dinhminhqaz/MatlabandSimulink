# Numerical solution of the logistic equation

# The Logistic Growth model describes the dynamics of variable N.
# download package deSolve

install.packages("deSolve", dependencies = TRUE)

# Include library

library(deSolve)

# For more information
?deSolve

# There are two model parameters: r and K. Parameters are stored
# as a vector with assigned names and values:
parameters <- c(r = 0.1, K = 10)

# The initial value is given:
state <- c(N = 0.1)

# Model equations
Growth <- function(t, state, parameters) {
  with(as.list(c(state, parameters)),{
    dN <- r*N*(1-N/K)
    list(c(dN)) }) 
  }

# Time specification
times <- seq(0, 100, by = 0.01)

# Model integration ODE Solver
# Function ode returns an object of class deSolve with a matrix that contains the values of the
# state variables (columns) at the requested output times.
out <- ode(state, times, Growth, parameters)

head(out)
# Plotting results
plot(out, main = "Logistic growth", ylab = "N(t)", col = "red", lwd = 4)

?plot
# Model diagnostics
diagnostics(out)



# Plotting multiple scenarios
Growth2 <- function(t, y, parms)
  with (as.list(parms), list(r * y * (1 - y/K)))
times <- seq(from = 0, to = 30, by = 0.1)

out1 <- ode(y = c(y = 2), times, func = Growth2, parms = c(r = 1, K = 10))
out2 <- ode(y = c(y = 12), times, func = Growth2, parms = c(r = 1, K = 10))
plot(out1, out2, lwd = 2)
plot(out1)




########################################################
# Clear workspace
rm(list = ls())




