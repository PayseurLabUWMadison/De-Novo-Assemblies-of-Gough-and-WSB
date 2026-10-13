#!/bin/bash

minimap2 -a --eqx -x asm5 --cs -r2k /mnt/ssd/jing/denovo_assembly/final_assembly/mm39_autosomes_chrX.fa /mnt/ssd/jing/denovo_assembly/final_assembly/wsb_polished_autosomes_chrX.fa | samtools sort -O BAM -o mm39_wsb_aln_autosomes_chrX.bam
samtools index mm39_wsb_aln_autosomes_chrX.bam
nohup syri -c mm39_wsb_aln_autosomes_chrX.bam -r /mnt/ssd/jing/denovo_assembly/seqkit_seqtk_wGaps/mm39_autosomes_chrX.fa -q /mnt/ssd/jing/denovo_assembly/final_assembly/wsb_polished_autosomes_chrX.fa -k -F B --prefix mm39_wsb --nc 12

minimap2 -a --eqx -x asm5 --cs -r2k /mnt/ssd/jing/denovo_assembly/final_assembly/wsb_polished_autosomes_chrX.fa /mnt/ssd/jing/denovo_assembly/final_assembly/gl2_polished_autosomes_chrX.fa | samtools sort -O BAM -o wsb_gl2_aln_autosomes_chrX.bam
samtools index wsb_gl2_aln_autosomes_chrX.bam
nohup syri -c wsb_gl2_aln_autosomes_chrX.bam -r /mnt/ssd/jing/denovo_assembly/final_assembly/wsb_polished_autosomes_chrX.fa -q /mnt/ssd/jing/denovo_assembly/final_assembly/gl2_polished_autosomes_chrX.fa -k -F B --prefix wsb_gl2 --nc 12 &
