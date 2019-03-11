#!/bin/bash -l
#PBS -l walltime=12:00:00,nodes=2:ppn=24,mem=62gb
#PBS -m abe
#PBS -e Bowtie.error
#PBS -o Bowtie.out

module load bowtie2

cd ~/Metagenomic/Human/N_Trimmed/Homopolymer/Trimmomatic/Host_removal/Assembly/Scaffolds 

#bowtie2-build HU100_S17_scaffolds.fasta.Filtered.fna HU100_S17_Bowtie_assembly
bowtie2-build HU101_S15_scaffolds.fasta.Filtered.fna HU101_S15_Bowtie_assembly
bowtie2-build HU103_S22_scaffolds.fasta.Filtered.fna HU103_S22_Bowtie_assembly
bowtie2-build HU107_S1_scaffolds.fasta.Filtered.fna HU107_S1_Bowtie_assembly
bowtie2-build HU108_S18_scaffolds.fasta.Filtered.fna HU108_S18_Bowtie_assembly
bowtie2-build HU109_S19_scaffolds.fasta.Filtered.fna HU109_S19_Bowtie_assembly
bowtie2-build HU112_S2_scaffolds.fasta.Filtered.fna HU112_S2_Bowtie_assembly
bowtie2-build HU113_S3_scaffolds.fasta.Filtered.fna HU113_S3_Bowtie_assembly
bowtie2-build HU114_S27_scaffolds.fasta.Filtered.fna HU114_S27_Bowtie_assembly
bowtie2-build HU115_S28_scaffolds.fasta.Filtered.fna HU115_S28_Bowtie_assembly
bowtie2-build HU117_S4_scaffolds.fasta.Filtered.fna HU117_S4_Bowtie_assembly
bowtie2-build HU118_S5_scaffolds.fasta.Filtered.fna HU118_S5_Bowtie_assembly
bowtie2-build HU119_S20_scaffolds.fasta.Filtered.fna HU119_S20_Bowtie_assembly
bowtie2-build HU122_S6_scaffolds.fasta.Filtered.fna HU122_S6_Bowtie_assembly
bowtie2-build HU123_S7_scaffolds.fasta.Filtered.fna HU123_S7_Bowtie_assembly
bowtie2-build HU124_S23_scaffolds.fasta.Filtered.fna HU124_S23_Bowtie_assembly
bowtie2-build HU500_S8_scaffolds.fasta.Filtered.fna HU500_S8_Bowtie_assembly
bowtie2-build HU502_S24_scaffolds.fasta.Filtered.fna HU502_S24_Bowtie_assembly
bowtie2-build HU503_S9_scaffolds.fasta.Filtered.fna HU503_S9_Bowtie_assembly
bowtie2-build HU504_S25_scaffolds.fasta.Filtered.fna HU504_S25_Bowtie_assembly
bowtie2-build HU505_S21_scaffolds.fasta.Filtered.fna HU505_S21_Bowtie_assembly
bowtie2-build HU506_S10_scaffolds.fasta.Filtered.fna HU506_S10_Bowtie_assembly
bowtie2-build HU508_S26_scaffolds.fasta.Filtered.fna HU508_S26_Bowtie_assembly
bowtie2-build HU537_S11_scaffolds.fasta.Filtered.fna HU537_S11_Bowtie_assembly
bowtie2-build HU538_S12_scaffolds.fasta.Filtered.fna HU538_S12_Bowtie_assembly
bowtie2-build HU539_S13_scaffolds.fasta.Filtered.fna HU539_S13_Bowtie_assembly
bowtie2-build HU540_S14_scaffolds.fasta.Filtered.fna HU540_S14_Bowtie_assembly
bowtie2-build HU99_S16_scaffolds.fasta.Filtered.fna HU99_S16_Bowtie_assembly
