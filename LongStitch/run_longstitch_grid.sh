#!/bin/bash

for i in 24 32 40; do
        for j 100 250 500; do
                mkdir k${i}_w${j}
                mv {GoughL2_nextDenovo.fa*,gough_ont_reads.fastq.gz} k${i}_w${j}/
                cd k${i}_w${j}/
                longstitch run draft=GoughL2_nextDenovo reads=gough_ont_reads G=2700000000 t=16 k_ntLink=${i} w=${j} out_prefix=GoughL2_nextDenovo_longStich_k${i}_w${j}
                cd ../
        done
done
