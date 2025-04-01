#!/usr/bin/bash -l 
#SBATCH -N 1 -n 8 -p batch --mem 96gb --out logs/Conco%A.log

module load occultercut

OcculterCut -f ~/bigdata/dataset/genomes/GCA_001566745.1_Conidiobolus_coronatus_NRRL28638_genomic.fna -a ConcoCDS.gff

