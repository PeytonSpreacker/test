test_data <- read.csv("ds_salaries.csv")

# View data
head(test_data)
tail(test_data)
View(test_data)

# Extract components of your data frame
# Rows are observations
# Columns are variables
test_data[1,3]
test_data[,3]
test_data$experience_level

# Install and use packages
# Packages have programmed functions that solve specific problems
# and expand R vocabulary
install.packages("tidyverse")
library("tidyverse")

#start your analysis
test_data %>% 
  select(experience_level, salary_in_usd, company_size) %>% 
  filter(salary_in_usd > 200000) %>% 
  arrange(salary_in_usd)
