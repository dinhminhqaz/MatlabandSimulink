

# Check if pacman installed
if (!require("pacman")) install.packages("pacman")

p_load(psych)        # Load psych package for PCA
p_depends(psych)
p_load(GPArotation)  # Install dependency


# Load Data ##########################
big5all <- read.csv("data.csv", header = TRUE, sep = "")

# Reduced data
big5 <- read.csv("big5.csv", header = TRUE)
colnames(big5)
boxplot(big5)

# PCA with no rotation, with 5 factors
pc_0 <- principal(big5, nfactors = 5)
pc_0    # Check results

# PCA with rotation oblimin
pc_1 <- principal(big5, nfactors = 5, rotate = "oblimin")
pc_1    # Check the results

# Inspect results
plot(pc_1)


# Clean up #####################
rm(list = ls())
