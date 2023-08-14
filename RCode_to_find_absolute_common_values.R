# Install and load the readxl package
install.packages("readxl")
library(readxl)

# Read the data from the Excel file
df <- read_excel("Copy of CDX_only.xlsx")

# Create a function to check if a value is repeated in all columns
is_repeated_in_all_columns <- function(value) {
  all_values <- unlist(df)
  num_occurrences <- sum(all_values == value, na.rm = TRUE)
  num_occurrences == 9 #Set the threshold here
}

# Find unique values that appear in all columns (I can change the number of columns to look for and set a threshold)
repeated_strings <- unique(unlist(df))[sapply(unique(unlist(df)), is_repeated_in_all_columns)]

# Sort the unique string values that repeated in all columns (Made it user defined now)
sorted_repeated_strings <- sort(repeated_strings)

# Print the sorted values
print(sorted_repeated_strings)
#Output it as a dataframe because it is easy to copy to excell, since xlx package is not working on my laptop 
result_df <- data.frame(Sorted_Repeated_Genes = sorted_repeated_strings)
