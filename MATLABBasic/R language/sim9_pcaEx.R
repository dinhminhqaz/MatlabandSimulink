

install.packages("pacman")

# Install rgl for intaractive 3D plots using OpenGL
# On Mac loads in X11/XQuartz
pacman::p_load(rgl)

# Create Data ############################

x <- runif(100, 0, 100)    # 100 points from uniform distribution for x
y <- runif(100, 0, 100)    # Same for y
z <- y + runif(100, 0, 10) # Add random values for z

plot(x, y)
plot(x, z)
plot(y, z)

# Plot in 3D
plot3d(x, y, z)
