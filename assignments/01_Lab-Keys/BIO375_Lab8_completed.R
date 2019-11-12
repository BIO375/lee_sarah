# Clean up the working environment
rm(list = ls())
# Verify working directory, should be ~/Documents/Analyses/lastname_first
getwd()

# Load tidyverse
library("tidyverse")
# Check for updates
tidyverse_update()

# To perform sign tests, install and load the package DescTools
# install.packages("DescTools")
library("DescTools")

# To simplify summary statistics, install and load the package summarytools
# install.packages("summarytools")
# library("summarytools")

# For later plotting
install.packages("Hmisc")
library(Hmisc)

bird <- read_csv("datasets/abd/chapter12/chap12e2BlackbirdTestosterone.csv")

bird02 <- bird %>%
  mutate(difference = afterImplant -beforeImplant)

ggplot(bird02) +
  geom_histogram(aes(difference), binwidth = 10)+
  facet_wrap(~"")

ggplot(bird02) +
  geom_boxplot(aes(x = "", y = difference))

ggplot(bird02)+
  geom_qq(aes(sample = difference, color = ""))





