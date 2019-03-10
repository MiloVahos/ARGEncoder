#!/bin/bash

for B in 1000000 10000000 50000000 100000000; do
    mkdir "L1024_K26_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B $B -C 1 -P0 0.1075
    echo "Completada L1024_K26_B$B"
    mv "GRCh38.meta" "L1024_K26_B$B"
    mv "GRCh38.align" "L1024_K26_B$B"
done

for B in 1000000 10000000 50000000 100000000; do
    mkdir "L1024_K64_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B $B -C 1 -P0 0.0575
    echo "Completada L1024_K64_B$B"
    mv "GRCh38.meta" "L1024_K64_B$B"
    mv "GRCh38.align" "L1024_K64_B$B"
done

for B in 1000000 10000000 50000000 100000000; do
    mkdir "L1024_K128_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B $B -C 1 -P0 0.0325
    echo "Completada L1024_K128_B$B"
    mv "GRCh38.meta" "L1024_K128_B$B"
    mv "GRCh38.align" "L1024_K128_B$B"
done



