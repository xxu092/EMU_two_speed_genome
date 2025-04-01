#!/usr/bin/bash -l 
#SBATCH -N 1 -n 8 -p batch --mem 64gb --out logs/Emai%A.log

module load occultercut

OcculterCut -f ~/bigdata/EDTA/genome/Entomophaga_maimaiga_var_ARSEF_7190.fasta -a EmaiCDS1.gff3 

