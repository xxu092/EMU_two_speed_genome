#!/usr/bin/bash -l 
#SBATCH -N 1 -n 8 -p batch --mem 96gb --out logs/Conth%A.log

module load occultercut

OcculterCut -f ~/bigdata/dataset/genomes/GCA_025603075.1_Conth1_genomic.fna -a ConthCDS.gff

