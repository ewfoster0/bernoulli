#### Bernoulli Event Simulator

library(tidyverse)


# Create a function to simulate the DNA extension process
extend <- function(cycles, stepwise_yield) {
  # Initialize the product size distribution
  product_sizes <- c()
  
  # For each cycle
  for (i in 1:cycles) {
    
    # Calculate the number of bases extended
    extended_bases <- (1 - stepwise_yield) * i
    
    # Add extended bases to the product size distribution
    product_sizes <- c(product_sizes, extended_bases)
  }
  
  # Return the product size distribution
  product_sizes
}

# Simulate the DNA extension process for 100 cycles with a 95% stepwise yield
product_sizes <- extend(100, 0.95)

# Plot the product size distribution
hist(product_sizes)