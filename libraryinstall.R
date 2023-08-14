# Install biocmanager package if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# Install DESeq2 package using biocmanager
BiocManager::install("DESeq2")

# Install ggplot2 package using CRAN
install.packages("ggplot2")

# Install RColorBrewer package
install.packages("RColorBrewer")

# Install gplots package
install.packages("gplots")

# Install genefilter package
install.packages("genefilter")

