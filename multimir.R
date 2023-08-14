library(multiMiR)
counts_file  <- system.file("extdata", "counts_table.tsv", package = "multiMiR")
strains_file <- system.file("extdata", "strains_factor.tsv", package = "multiMiR")
counts_table   <- readRDS(counts_file)
strains_factor <- readRDS(strains_file)

# Standard edgeR differential expression analysis
design <- model.matrix(~ strains_factor)

# Using trended dispersions
dge <- DGEList(counts = counts_table)
dge <- calcNormFactors(dge)
dge$samples$strains <- strains_factor
dge <- estimateGLMCommonDisp(dge, design)
dge <- estimateGLMTrendedDisp(dge, design)
dge <- estimateGLMTagwiseDisp(dge, design)

# Fit GLM model for strain effect
fit <- glmFit(dge, design)
lrt <- glmLRT(fit)

# Table of unadjusted p-values (PValue) and FDR values
p_val_DE_edgeR <- topTags(lrt, adjust.method = 'BH', n = Inf)

# Getting top differentially expressed miRNA's
top_miRNAs <- rownames(p_val_DE_edgeR$table)[1:10]

# Plug miRNA's into multiMiR and getting validated targets
multimir_results <- get_multimir(org     = 'mmu',
                                 mirna   = top_miRNAs,
                                 table   = 'validated',
                                 summary = TRUE)