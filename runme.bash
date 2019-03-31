#!/bin/bash

for B in 10000000 50000000 100000000; do
    mkdir "L512_K26_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 512 -B $B -C 1 -P0 0.1075
    echo "Completada L512_K26_B$B"
    mv "GRCh38.meta" "L512_K26_B$B"
    mv "GRCh38.align" "L512_K26_B$B"
done

for B in 10000000 50000000 100000000; do
    mkdir "L512_K128_B$B"
    time ./ARF -DATA GRCh38.fa -I -Q -L 512 -B $B -C 1 -P0 0.0325
    echo "Completada L512_K128_B$B"
    mv "GRCh38.meta" "L512_K128_B$B"
    mv "GRCh38.align" "L512_K128_B$B"
done



