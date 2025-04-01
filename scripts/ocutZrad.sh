#!/usr/bin/bash -l 
#SBATCH -N 1 -n 8 -p intel --mem 96gb --out logs/Zrad%A.log

module load occultercut

OcculterCut -f ~/bigdata/genomes/Zoophthora_radicans_ATCC_208865_v1.fasta -a ZradCDS.gff3 

