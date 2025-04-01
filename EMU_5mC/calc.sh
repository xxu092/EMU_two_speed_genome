#!/usr/bin/bash -l
#SBATCH -p epyc -n 1 -N 1 -c 16 --mem 96gb --out logs/calc%A.log

awk '
 BEGIN { 
     mc = 0;   # Initialize mc to 0
     sum = 0;  # Initialize sum to 0
 } 
 { 
     sum += $31;                  # Add the value in column 19 to mc
     mc += ($31 * $32 * 0.01);  # Add the product of columns 19 and 20 multiplied by 0.01 to sum
 } 
 END { 
     print mc / sum;  # Print the result of mc divided by sum
 }
 ' R1repeats1.gff3_5mC.bed