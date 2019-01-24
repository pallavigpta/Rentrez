# Assignment 3
# BIOL 432: Computation and Big Data in Biology
# Pallavi Gupta

library(rentrez) # load package

ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1") # store gene accession numbers 
Bburg<-entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta") # retrieve gene sequences from NCBI

Bburgseq <- strsplit(Bburg, "\n\n")[[1]] # create a vector with 3 sequences
Bburgseq <- gsub(".*sequence|\n", "", Bburgseq) # clean up sequences
Bburgseq # check

write.csv(Bburgseq, file = "Sequences.csv") # output vector into a csv file
