#!/bin/bash

nohup mini_align -i ../gough_reads/gough_ont_reads.fastq.gz -r ../gough_draft_assembly/GoughL2_nextDenovo_longStich_k32_w250.fa -P -m -p calls_to_gough_draft_longStitch.bam -t 32
nohup medaka inference calls_to_gough_draft_longStitch.bam results/gough_longStitch_all_contigs.hdf
nohup medaka sequence results/gough_longStitch_all_contigs.hdf ../gough_draft_assembly/GoughL2_nextDenovo_longStich_k32_w250.fa GoughL2_polishedByMedaka.fasta
