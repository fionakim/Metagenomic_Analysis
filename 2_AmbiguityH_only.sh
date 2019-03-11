#!/bin/bash -l        
#PBS -l walltime=12:00:00,nodes=3:ppn=8,mem=20gb 
#PBS -m abe 
#PBS -e Ambiguity.error
#PBS -o Ambiguity.out

module load perl

cd ~/Metagenomic/Human

perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU100_S17_R1_001.fastq -irev HU100_S17_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU101_S15_R1_001.fastq -irev HU101_S15_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU103_S22_R1_001.fastq -irev HU103_S22_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU107_S1_R1_001.fastq -irev HU107_S1_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU108_S18_R1_001.fastq -irev HU108_S18_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU109_S19_R1_001.fastq -irev HU109_S19_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU112_S2_R1_001.fastq -irev HU112_S2_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU113_S3_R1_001.fastq -irev HU113_S3_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU114_S27_R1_001.fastq -irev HU114_S27_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU115_S28_R1_001.fastq -irev HU115_S28_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU117_S4_R1_001.fastq -irev HU117_S4_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU118_S5_R1_001.fastq -irev HU118_S5_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU119_S20_R1_001.fastq -irev HU119_S20_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU122_S6_R1_001.fastq -irev HU122_S6_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU123_S7_R1_001.fastq -irev HU123_S7_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU124_S23_R1_001.fastq -irev HU124_S23_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU500_S8_R1_001.fastq -irev HU500_S8_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU502_S24_R1_001.fastq -irev HU502_S24_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU503_S9_R1_001.fastq -irev HU503_S9_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU504_S25_R1_001.fastq -irev HU504_S25_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU505_S21_R1_001.fastq -irev HU505_S21_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU506_S10_R1_001.fastq -irev HU506_S10_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU508_S26_R1_001.fastq -irev HU508_S26_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU537_S11_R1_001.fastq -irev HU537_S11_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU538_S12_R1_001.fastq -irev HU538_S12_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU539_S13_R1_001.fastq -irev HU539_S13_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU540_S14_R1_001.fastq -irev HU540_S14_R2_001.fastq -c 1 -t5 -t3
perl ~/Softwares/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i HU99_S16_R1_001.fastq -irev HU99_S16_R2_001.fastq -c 1 -t5 -t3
