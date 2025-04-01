#!/usr/bin/bash -l 
#SBATCH -N 1 -n 8 -p batch --mem 96gb --out logs/Emus%A.log

module load occultercut

OcculterCut -f ~/bigdata/EDTA/genome//Entomophthora_muscae_UCB.Nanopore10X_v2.fasta -a EmusCDS.gff3 

