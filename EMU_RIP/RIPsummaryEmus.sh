#!/usr/bin/bash -l
#SBATCH -p batch -n 1 -N 1 -c 4 --mem 16gb --out logs/RIPsummary%A.log



perl RIP_genome_summary.pl results/EmusR0regions.bed
perl RIP_genome_summary.pl results/EmusR1regions.bed

perl RIP_genome_summary.pl results/EmusR0repeats.bed
perl RIP_genome_summary.pl results/EmusR1repeats.bed
perl RIP_genome_summary.pl results/EmusR0genes.bed
perl RIP_genome_summary.pl results/EmusR1genes.bed
