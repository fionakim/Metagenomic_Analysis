#!/bin/bash -l        
#PBS -l walltime=32:00:00,nodes=6:ppn=24,mem=30gb 
#PBS -m abe 
#PBS -e homopolymer.error
#PBS -o homopolymer.out
 
module load prinseq

cd ~/Metagenomic/Human/N_Trimmed/Homopolymer

#prinseq-lite.pl -fastq ../HU100_S17_R1_001.fastq_trimmed -fastq2 ../HU100_S17_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
#prinseq-lite.pl -fastq ../HU101_S15_R1_001.fastq_trimmed -fastq2 ../HU101_S15_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU103_S22_R1_001.fastq_trimmed -fastq2 ../HU103_S22_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU107_S1_R1_001.fastq_trimmed -fastq2 ../HU107_S1_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU108_S18_R1_001.fastq_trimmed -fastq2 ../HU108_S18_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU109_S19_R1_001.fastq_trimmed -fastq2 ../HU109_S19_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU112_S2_R1_001.fastq_trimmed -fastq2 ../HU112_S2_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU113_S3_R1_001.fastq_trimmed -fastq2 ../HU113_S3_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU114_S27_R1_001.fastq_trimmed -fastq2 ../HU114_S27_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU115_S28_R1_001.fastq_trimmed -fastq2 ../HU115_S28_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU117_S4_R1_001.fastq_trimmed -fastq2 ../HU117_S4_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU118_S5_R1_001.fastq_trimmed -fastq2 ../HU118_S5_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU119_S20_R1_001.fastq_trimmed -fastq2 ../HU119_S20_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU122_S6_R1_001.fastq_trimmed -fastq2 ../HU122_S6_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU123_S7_R1_001.fastq_trimmed -fastq2 ../HU123_S7_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU124_S23_R1_001.fastq_trimmed -fastq2 ../HU124_S23_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU500_S8_R1_001.fastq_trimmed -fastq2 ../HU500_S8_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU502_S24_R1_001.fastq_trimmed -fastq2 ../HU502_S24_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU503_S9_R1_001.fastq_trimmed -fastq2 ../HU503_S9_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU504_S25_R1_001.fastq_trimmed -fastq2 ../HU504_S25_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU505_S21_R1_001.fastq_trimmed -fastq2 ../HU505_S21_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU506_S10_R1_001.fastq_trimmed -fastq2 ../HU506_S10_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU508_S26_R1_001.fastq_trimmed -fastq2 ../HU508_S26_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU537_S11_R1_001.fastq_trimmed -fastq2 ../HU537_S11_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU538_S12_R1_001.fastq_trimmed -fastq2 ../HU538_S12_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU539_S13_R1_001.fastq_trimmed -fastq2 ../HU539_S13_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU540_S14_R1_001.fastq_trimmed -fastq2 ../HU540_S14_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
prinseq-lite.pl -fastq ../HU99_S16_R1_001.fastq_trimmed -fastq2 ../HU99_S16_R2_001.fastq_trimmed -custom_params "AAT 10;T 70%;A 15;G 70%;C 15"
