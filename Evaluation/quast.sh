#!/bin/bash

# mm39_ncbiRefSeqCurated.gtf was downloaded from UCSC Table Browser
nohup quast-lg /mnt/researchdrive/payseur/peicheng/denovo_assembly/busco/goughL2_polished/gl2_assembly_polished.fa -r /mnt/researchdrive/payseur/peicheng/mm39_reference_genome/mm39.fa -g mm39_ncbiRefSeqCurated.gtf --fragmented --
eukaryote --min-contig 3000 --min-alignment 500 --extensive-mis-size 7000 -o quast_gl2_polished &
