# EMU_two_speed_genome

Extract secreted proteins from gff3 annotation file
```
grep "mRNA" Entomophthora_muscae_UCB.gff3 | grep "SECRETED" > EMUSecreted.gff3
```
Extract genes in R0/R1 regions
```
grep "gene" groupedGenes.gff3 | grep "R0" > R0genes.gff3
```
calculate number of secreted proteins in R0 and R1 regions
```
bedtools intersect -a EMUSecreted.gff3 -b R0genes.gff3 | awk '{print $9}' | sort | uniq | wc -l
#148
bedtools intersect -a EMUSecreted.gff3 -b R1genes.gff3 | awk '{print $9}' | sort | uniq | wc -l
#5468
```
Locate repeats in R0 and R1 regions
merge rmout.gff file from TEtrimmer result 
```
bedtools sort -i Entomophthora_muscae_UCB.Nanopore10X_v2.fasta.out.gff > Emus.rmout.sorted.gff
bedtools merge -i Emus.rmout.sorted.gff > Emus.rmout.sorted.merged.gff
```
extract R0 regions and R1 regions
```
grep "R1" groupedRegions.gff3 > R1regions.gff3
grep "R0" groupedRegions.gff3 > R0regions.gff3
```
get repeats in R0 regions and R1 regions
```
bedtools intersect -a R0regions.gff3 -b Emus.rmout.sorted.merged.gff -wo > R0repeats.gff3
bedtools intersect -a R1regions.gff3 -b Emus.rmout.sorted.merged.gff -wo > R1repeats.gff3
```
To calculate RIP index in R0 and R1 regions need to get fasta file of all regions
```
bedtools getfasta -fi ~/bigdata/dataset/genomes/Entomophthora_muscae_UCB.scaffolds.fa \ -bed R0regions.gff3 -fo EmusR0regions.fasta
bedtools getfasta -fi ~/bigdata/dataset/genomes/Entomophthora_muscae_UCB.scaffolds.fa \ -bed R1regions.gff3 -fo EmusR1regions.fasta
```
get sequences of repeats in R0 or R1 regions
```
bedtools getfasta -fi ~/bigdata/dataset/genomes/Entomophthora_muscae_UCB.scaffolds.fa -bed R0repeats1.gff3 -fo EmusR0repeats.fasta 
bedtools getfasta -fi ~/bigdata/dataset/genomes/Entomophthora_muscae_UCB.scaffolds.fa -bed R1repeats1.gff3 -fo EmusR1repeats.fasta
```
