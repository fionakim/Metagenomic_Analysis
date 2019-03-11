#!/bin/bash -l
#PBS -l walltime=12:00:00,nodes=1:ppn=24,mem=62gb
#PBS -m abe
#PBS -e prodigal.error
#PBS -o prodigal.out

module load prodigal

cd ~/Metagenomic/Human/N_Trimmed/Homopolymer/Trimmomatic/Host_removal/Assembly/Scaffolds

#prodigal -i HU100_S17_scaffolds.fasta.Filtered.fna -o HU100_S17.Genes -a HU100_S17.proteins.faa -p meta
#prodigal -i HU101_S15_scaffolds.fasta.Filtered.fna -o HU101_S15.Genes -a HU101_S15.proteins.faa -p meta
prodigal -i HU103_S22_scaffolds.fasta.Filtered.fna -o HU103_S22.Genes -a HU103_S22.proteins.faa -p meta
prodigal -i HU107_S1_scaffolds.fasta.Filtered.fna -o HU107_S1.Genes -a HU107_S1.proteins.faa -p meta
prodigal -i HU108_S18_scaffolds.fasta.Filtered.fna -o HU108_S18.Genes -a HU108_S18.proteins.faa -p meta
prodigal -i HU109_S19_scaffolds.fasta.Filtered.fna -o HU109_S19.Genes -a HU109_S19.proteins.faa -p meta
prodigal -i HU112_S2_scaffolds.fasta.Filtered.fna -o HU112_S2.Genes -a HU112_S2.proteins.faa -p meta
prodigal -i HU113_S3_scaffolds.fasta.Filtered.fna -o HU113_S3.Genes -a HU113_S3.proteins.faa -p meta
prodigal -i HU114_S27_scaffolds.fasta.Filtered.fna -o HU114_S27.Genes -a HU114_S27.proteins.faa -p meta
prodigal -i HU115_S28_scaffolds.fasta.Filtered.fna -o HU115_S28.Genes -a HU115_S28.proteins.faa -p meta
prodigal -i HU117_S4_scaffolds.fasta.Filtered.fna -o HU117_S4.Genes -a HU117_S4.proteins.faa -p meta
prodigal -i HU118_S5_scaffolds.fasta.Filtered.fna -o HU118_S5.Genes -a HU118_S5.proteins.faa -p meta
prodigal -i HU119_S20_scaffolds.fasta.Filtered.fna -o HU119_S20.Genes -a HU119_S20.proteins.faa -p meta
prodigal -i HU122_S6_scaffolds.fasta.Filtered.fna -o HU122_S6.Genes -a HU122_S6.proteins.faa -p meta
prodigal -i HU123_S7_scaffolds.fasta.Filtered.fna -o HU123_S7.Genes -a HU123_S7.proteins.faa -p meta
prodigal -i HU124_S23_scaffolds.fasta.Filtered.fna -o HU124_S23.Genes -a HU124_S23.proteins.faa -p meta
prodigal -i HU500_S8_scaffolds.fasta.Filtered.fna -o HU500_S8.Genes -a HU500_S8.proteins.faa -p meta
prodigal -i HU502_S24_scaffolds.fasta.Filtered.fna -o HU502_S24.Genes -a HU502_S24.proteins.faa -p meta
prodigal -i HU503_S9_scaffolds.fasta.Filtered.fna -o HU503_S9.Genes -a HU503_S9.proteins.faa -p meta
prodigal -i HU504_S25_scaffolds.fasta.Filtered.fna -o HU504_S25.Genes -a HU504_S25.proteins.faa -p meta
prodigal -i HU505_S21_scaffolds.fasta.Filtered.fna -o HU505_S21.Genes -a HU505_S21.proteins.faa -p meta
prodigal -i HU506_S10_scaffolds.fasta.Filtered.fna -o HU506_S10.Genes -a HU506_S10.proteins.faa -p meta
prodigal -i HU508_S26_scaffolds.fasta.Filtered.fna -o HU508_S26.Genes -a HU508_S26.proteins.faa -p meta
prodigal -i HU537_S11_scaffolds.fasta.Filtered.fna -o HU537_S11.Genes -a HU537_S11.proteins.faa -p meta
prodigal -i HU538_S12_scaffolds.fasta.Filtered.fna -o HU538_S12.Genes -a HU538_S12.proteins.faa -p meta
prodigal -i HU539_S13_scaffolds.fasta.Filtered.fna -o HU539_S13.Genes -a HU539_S13.proteins.faa -p meta
prodigal -i HU540_S14_scaffolds.fasta.Filtered.fna -o HU540_S14.Genes -a HU540_S14.proteins.faa -p meta
prodigal -i HU99_S16_scaffolds.fasta.Filtered.fna -o HU99_S16.Genes -a HU99_S16.proteins.faa -p meta
