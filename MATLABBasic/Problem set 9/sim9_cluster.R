
# Cluster Analysis


# Load Data ##########################
clusterC1 <- read.csv("googleworld5_1.csv", header = TRUE)
clusterC2 <- read.csv("googleworld5_2.csv", header = TRUE)
colnames(clusterC1)
colnames(clusterC2)

# Use numerical data only
clC1 <- clusterC1[, 2:6]
row.names(clC1) <- clusterC1[, 1]
colnames(clC1)

clC2 <- clusterC2[, 2:5]
row.names(clC2) <- clusterC2[, 1]
colnames(clC2)


# Clustering #############################

# Create distance matrix
dm1 <- dist(clC1)

# Hierarchical clustering
c1 <- hclust(dm1)
c1    # Show info on clustering

# Plot dendrogram of clusters
plot(c1, main = "Cluster for searches unicorn, internet security, data mining, brexit, fifa")

# Put all together in one line
plot(hclust(dist(clC1)))
plot(hclust(dist(clC2)), main = "Cluster for searches startup, ceo, enterpreneur, data science")



# Clean up #####################
rm(list = ls())
