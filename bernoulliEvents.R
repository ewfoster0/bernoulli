#### Bernoulli Event Simulator

library(tidyverse)

# Create a function to simulate the binomial distribution
binomial_simulation <- function(n, p) {
  # Initialize the product size distribution
  product_sizes <- c()
  
  # For each cycle
  for (i in 1:n) {
    
    # Calculate the number of bases extended
    extended_bases <- rbinom(1, p)
    
    # Add extended bases to the product size distribution
    product_sizes <- c(product_sizes, extended_bases)
  }
  
  # Return the product size distribution
  product_sizes
}

# Simulate the binomial distribution for 100 cycles with a 95% stepwise yield
product_sizes <- binomial_simulation(100, 0.95)

# Plot the ecdf
plot.ecdf(product_sizes)