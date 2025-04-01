#!/usr/bin/bash -l
#SBATCH -p epyc -n 1 -N 1 -c 8 --mem 32gb --out logs/intersect%A.log

module load bedtools
for i in R0regions.gff3 R1regions.gff3 Emusgene.gff3 Emus.rmout.sorted.merged.gff EmusR0gene.gff3 R0repeats1.gff3 EmusR1gene.gff3 R1repeats1.gff3
do
    bedtools intersect -a $i -b modified_bases.5mC.bed -wa -wb > ${i}_5mC.bed
done
