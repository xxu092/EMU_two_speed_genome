#!/usr/bin/bash -l 
#SBATCH -N 1 -n 8 -p epyc --mem 96gb --out logs/Mcic%A.log

module load occultercut

OcculterCut -f ~/bigdata/genomes/Massospora_cicadina_MCPNR19_6FC.v_medaka.sorted.fasta -a McicCDS.gff 

