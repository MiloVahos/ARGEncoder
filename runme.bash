#!/bin/bash

# L = 256
# K = 26 => P0 = 0.1075
for B in 1000000 10000000 50000000 100000000; do
    mkdir "L256_K26_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 256 -B $B -C 1 -P0 0.1075
    echo "Completada L256_K26_B$B"
    mv "GRCh38.meta" "L256_K26_B$B"
    mv "GRCh38.align" "L256_K26_B$B"
done

# K = 64 => P0 = 0.0575
for B in 1000000 10000000 50000000 100000000; do
    mkdir "L256_K64_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 256 -B $B -C 1 -P0 0.0575
    echo "Completada L256_K64_B$B"
    mv "GRCh38.meta" "L256_K64_B$B"
    mv "GRCh38.align" "L256_K64_B$B"
done

# K = 128 => P0 = 0.0325
for B in 1000000 10000000 50000000 100000000; do
    mkdir "L256_K128_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 256 -B $B -C 1 -P0 0.0325
    echo "Completada L256_K128_B$B"
    mv "GRCh38.meta" "L256_K128_B$B"
    mv "GRCh38.align" "L256_K128_B$B"
done



