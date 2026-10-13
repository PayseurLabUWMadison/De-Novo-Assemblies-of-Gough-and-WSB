#!/bin/bash

/mnt/ssd/jing/software/meryl-1.4.1/bin/meryl count k=21 threads=8 G2-1-091124_S202_L003_R1_001.fastq.gz G2-1-091124_S202_L003_R2_001.fastq.gz output gl2_1.meryl
/mnt/ssd/jing/software/meryl-1.4.1/bin/meryl count k=21 threads=8 G2-1-091124_S202_L004_R1_001.fastq.gz G2-1-091124_S202_L004_R2_001.fastq.gz output gl2_2.meryl
/mnt/ssd/jing/software/meryl-1.4.1/bin/meryl count k=21 threads=8 G2-1-091124_S7_L006_R1_001.fastq.gz G2-1-091124_S7_L006_R2_001.fastq.gz output gl2_3.meryl

nohup /mnt/ssd/jing/software/meryl-1.4.1/bin/meryl union-sum output gl2_combined_meryl_kmer_db gl2_1.meryl gl2_2.meryl gl2_3.meryl &
