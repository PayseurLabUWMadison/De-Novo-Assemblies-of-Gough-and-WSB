#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 X ; do
minimap2 -a --eqx -x asm5 --cs -r2k /mnt/ssd/jing/denovo_assembly/final_assemblies/wsb_chr${i}.fa /mnt/ssd/jing/denovo_assembly/final_assemblies/gl2_chr${i}.fa | samtools sort -O BAM -o wsb_gl2_aln_chr${i}.bam
done

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 X ; do
samtools index wsb_gl2_aln_chr${i}.bam
done

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 X ; do
nohup syri -c wsb_gl2_aln_chr${i}.bam -r /mnt/ssd/jing/denovo_assembly/final_assemblies/wsb_chr${i}.fa -q /mnt/ssd/jing/denovo_assembly/final_assemblies/gl2_chr${i}.fa -k -F B --prefix wsbchr${i}_
gl2chr${i} --nc 12
done
