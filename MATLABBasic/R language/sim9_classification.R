
# Classification with knn

install.packages("pacman")

# Install class for knn classification
pacman::p_load("class")

# Load Data ############################
# Read csv
df <- read.csv("credit_card1.csv", header = TRUE)
colnames(df)
head(df)       # Show the first 6 cases

# Normalization - Important for different ranges ###########
# Define the function for normalization

normal <- function(x) {
  norm <- ((x - min(x))/(max(x)- min(x)))
  return (norm)
}

# Apply function to data frame without ID and default
nordf <- as.data.frame(lapply(df[,2:24], normal))
head(nordf)

# Put outcome variable back on and rename
nordf <- cbind(nordf, df[,25])
names(nordf)[24] <- "Default"

# Check Data
colnames(nordf)
head(nordf)

# Split Data #############################

# Split into training set (80%) and testing set (20%)
set.seed(1122)
nordf.split <- sample(2, nrow(nordf),replace = TRUE, prob = c(0.8, 0.2))

# Create training and testing dataset without outcome labels.
# Use just the first 23 variavles
nordf.train.labels <- nordf[nordf.split == 1, 24]
nordf.test.labels <- nordf[nordf.split == 2, 24]


# Create outcome labels
nordf.train <- nordf[nordf.split == 1, 1:23]
nordf.test <- nordf[nordf.split == 2, 1:23]


# Build and test classifier ##########################

# Build classifier for test data
# k = number of neighbors to compare; odd n avoids ties.
# Try for several k and check accuracy
nordf.pred <- knn(train = nordf.train,
                  test = nordf.test,
                  cl = nordf.train.labels,       # true class
                  k = 10)                         # n neighbors

# Compare predicted outcome to observed outcome
table(nordf.pred, nordf.test.labels)


# Clean up #####################
rm(list = ls())


