#!/bin/bash -l
#PBS -l walltime=12:00:00,nodes=2:ppn=24,mem=62gb
#PBS -m abe
#PBS -e BowtieMap.error
#PBS -o BowtieMap.out

module load bowtie2
 
cd ~/Metagenomic/Human/N_Trimmed/Homopolymer/Trimmomatic/Host_removal/Assembly/Scaffolds

#bowtie2 -x Bowtie2_index/HU100_S17_Bowtie_assembly -q -1 ../../HU100_S17_prinseq_good_Rtjq_host_removed_r1.fastq -2 ../../HU100_S17_prinseq_good_Rtjq_host_removed_r2.fastq -U ../../HU100_S17_R2_001_prinseq_good_Rtjq_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU100_S17_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU101_S15_Bowtie_assembly -q -1 ../../HU101_S15_prinseq_good_I9fo_host_removed_r1.fastq -2 ../../HU101_S15_prinseq_good_I9fo_host_removed_r2.fastq -U ../../HU101_S15_R2_001_prinseq_good_I9fo_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU101_S15_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU103_S22_Bowtie_assembly -q -1 ../../HU103_S22_prinseq_good_UH26_host_removed_r1.fastq -2 ../../HU103_S22_prinseq_good_UH26_host_removed_r2.fastq -U ../../HU103_S22_R2_001_prinseq_good_UH26_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU103_S22_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU107_S1_Bowtie_assembly -q -1 ../../HU107_S1_prinseq_good_7_eb_host_removed_r1.fastq -2 ../../HU107_S1_prinseq_good_7_eb_host_removed_r2.fastq -U ../../HU107_S1_R2_001_prinseq_good_7_eb_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU107_S1_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU108_S18_Bowtie_assembly -q -1 ../../HU108_S18_prinseq_good_BAHK_host_removed_r1.fastq -2 ../../HU108_S18_prinseq_good_BAHK_host_removed_r2.fastq -U ../../HU108_S18_R2_001_prinseq_good_BAHK_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU108_S18_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU109_S19_Bowtie_assembly -q -1 ../../HU109_S19_prinseq_good_sWzB_host_removed_r1.fastq -2 ../../HU109_S19_prinseq_good_sWzB_host_removed_r2.fastq -U ../../HU109_S19_R2_001_prinseq_good_sWzB_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU109_S19_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU112_S2_Bowtie_assembly -q -1 ../../HU112_S2_prinseq_good_YZ7R_host_removed_r1.fastq -2 ../../HU112_S2_prinseq_good_YZ7R_host_removed_r2.fastq -U ../../HU112_S2_R2_001_prinseq_good_YZ7R_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU112_S2_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU113_S3_Bowtie_assembly -q -1 ../../HU113_S3_prinseq_good_exsy_host_removed_r1.fastq -2 ../../HU113_S3_prinseq_good_exsy_host_removed_r2.fastq -U ../../HU113_S3_R2_001_prinseq_good_exsy_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU113_S3_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU114_S27_Bowtie_assembly -q -1 ../../HU114_S27_prinseq_good___JQ_host_removed_r1.fastq -2 ../../HU114_S27_prinseq_good___JQ_host_removed_r2.fastq -U ../../HU114_S27_R2_001_prinseq_good___JQ_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU114_S27_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU115_S28_Bowtie_assembly -q -1 ../../HU115_S28_prinseq_good_c8rI_host_removed_r1.fastq -2 ../../HU115_S28_prinseq_good_c8rI_host_removed_r2.fastq -U ../../HU115_S28_R2_001_prinseq_good_c8rI_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU115_S28_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU117_S4_Bowtie_assembly -q -1 ../../HU117_S4_prinseq_good_5grf_host_removed_r1.fastq -2 ../../HU117_S4_prinseq_good_5grf_host_removed_r2.fastq -U ../../HU117_S4_R2_001_prinseq_good_5grf_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU117_S4_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU118_S5_Bowtie_assembly -q -1 ../../HU118_S5_prinseq_good_MBZg_host_removed_r1.fastq -2 ../../HU118_S5_prinseq_good_MBZg_host_removed_r2.fastq -U ../../HU118_S5_R2_001_prinseq_good_MBZg_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU118_S5_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU119_S20_Bowtie_assembly -q -1 ../../HU119_S20_prinseq_good_NSH3_host_removed_r1.fastq -2 ../../HU119_S20_prinseq_good_NSH3_host_removed_r2.fastq -U ../../HU119_S20_R2_001_prinseq_good_NSH3_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU119_S20_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU122_S6_Bowtie_assembly -q -1 ../../HU122_S6_prinseq_good_jNH__host_removed_r1.fastq -2 ../../HU122_S6_prinseq_good_jNH__host_removed_r2.fastq -U ../../HU122_S6_R2_001_prinseq_good_jNH__Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU122_S6_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU123_S7_Bowtie_assembly -q -1 ../../HU123_S7_prinseq_good_aY1__host_removed_r1.fastq -2 ../../HU123_S7_prinseq_good_aY1__host_removed_r2.fastq -U ../../HU123_S7_R2_001_prinseq_good_aY1__Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU123_S7_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU124_S23_Bowtie_assembly -q -1 ../../HU124_S23_prinseq_good_k2jQ_host_removed_r1.fastq -2 ../../HU124_S23_prinseq_good_k2jQ_host_removed_r2.fastq -U ../../HU124_S23_R2_001_prinseq_good_k2jQ_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU124_S23_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU500_S8_Bowtie_assembly -q -1 ../../HU500_S8_prinseq_good_O0kA_host_removed_r1.fastq -2 ../../HU500_S8_prinseq_good_O0kA_host_removed_r2.fastq -U ../../HU500_S8_R2_001_prinseq_good_O0kA_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU500_S8_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU502_S24_Bowtie_assembly -q -1 ../../HU502_S24_prinseq_good_H9AM_host_removed_r1.fastq -2 ../../HU502_S24_prinseq_good_H9AM_host_removed_r2.fastq -U ../../HU502_S24_R2_001_prinseq_good_H9AM_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU502_S24_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
#bowtie2 -x Bowtie2_index/HU503_S9_Bowtie_assembly -q -1 ../../HU503_S9_prinseq_good_Sw1C_host_removed_r1.fastq -2 ../../HU503_S9_prinseq_good_Sw1C_host_removed_r2.fastq -U ../../HU503_S9_R2_001_prinseq_good_Sw1C_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU503_S9_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU504_S25_Bowtie_assembly -q -1 ../../HU504_S25_prinseq_good_zYS3_host_removed_r1.fastq -2 ../../HU504_S25_prinseq_good_zYS3_host_removed_r2.fastq -U ../../HU504_S25_R2_001_prinseq_good_zYS3_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU504_S25_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU505_S21_Bowtie_assembly -q -1 ../../HU505_S21_prinseq_good_rtT4_host_removed_r1.fastq -2 ../../HU505_S21_prinseq_good_rtT4_host_removed_r2.fastq -U ../../HU505_S21_R2_001_prinseq_good_rtT4_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU505_S21_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU506_S10_Bowtie_assembly -q -1 ../../HU506_S10_prinseq_good_pXwj_host_removed_r1.fastq -2 ../../HU506_S10_prinseq_good_pXwj_host_removed_r2.fastq -U ../../HU506_S10_R2_001_prinseq_good_pXwj_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU506_S10_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU508_S26_Bowtie_assembly -q -1 ../../HU508_S26_prinseq_good_0ext_host_removed_r1.fastq -2 ../../HU508_S26_prinseq_good_0ext_host_removed_r2.fastq -U ../../HU508_S26_R2_001_prinseq_good_0ext_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU508_S26_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU537_S11_Bowtie_assembly -q -1 ../../HU537_S11_prinseq_good_DLJi_host_removed_r1.fastq -2 ../../HU537_S11_prinseq_good_DLJi_host_removed_r2.fastq -U ../../HU537_S11_R2_001_prinseq_good_DLJi_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU537_S11_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU538_S12_Bowtie_assembly -q -1 ../../HU538_S12_prinseq_good_DEtR_host_removed_r1.fastq -2 ../../HU538_S12_prinseq_good_DEtR_host_removed_r2.fastq -U ../../HU538_S12_R2_001_prinseq_good_DEtR_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU538_S12_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU539_S13_Bowtie_assembly -q -1 ../../HU539_S13_prinseq_good_RsRp_host_removed_r1.fastq -2 ../../HU539_S13_prinseq_good_RsRp_host_removed_r2.fastq -U ../../HU539_S13_R2_001_prinseq_good_RsRp_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU539_S13_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU540_S14_Bowtie_assembly -q -1 ../../HU540_S14_prinseq_good_EiSO_host_removed_r1.fastq -2 ../../HU540_S14_prinseq_good_EiSO_host_removed_r2.fastq -U ../../HU540_S14_R2_001_prinseq_good_EiSO_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU540_S14_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
bowtie2 -x Bowtie2_index/HU99_S16_Bowtie_assembly -q -1 ../../HU99_S16_prinseq_good_gv68_host_removed_r1.fastq -2 ../../HU99_S16_prinseq_good_gv68_host_removed_r2.fastq -U ../../HU99_S16_R2_001_prinseq_good_gv68_Nomates.fastq -N 1 --sensitive -p 48 -S Bowtie2_index/HU99_S16_Bowtie_Mapped_reads --no-unal --no-hd --no-sq --end-to-end -I 0 -X 10000 --fr --rf --no-discordant
