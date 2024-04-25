if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")


install.packages(c("XML", "xml2"))
BiocManager::install("MSnbase")
BiocManager::install("xcms")
