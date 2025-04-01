#!/usr/bin/bash -l
#SBATCH -p epyc -n 1 -N 1 -c 4 --mem 64gb --out logs/RIP%A.log
module load bioperl

perl RIP_index_calculation.pl -t CRI -m 100 -i EmusR0R1/EmusR0regions.fasta -o results/EmusR0regions.bed -r bed
perl RIP_index_calculation.pl -t CRI -m 100 -i EmusR0R1/EmusR1regions.fasta -o results/EmusR1regions.bed -r bed
perl RIP_index_calculation.pl -t CRI -m 100 -i EmusR0R1/EmusR0repeats.fasta -o results/EmusR0repeats.bed -r bed
perl RIP_index_calculation.pl -t CRI -m 100 -i EmusR0R1/EmusR1repeats.fasta -o results/EmusR1repeats.bed -r bed
perl RIP_index_calculation.pl -t CRI -m 100 -i EmusR0R1/EmusR0genes.fasta -o results/EmusR0genes.bed -r bed
perl RIP_index_calculation.pl -t CRI -m 100 -i EmusR0R1/EmusR1genes.fasta -o results/EmusR1genes.bed -r bed
