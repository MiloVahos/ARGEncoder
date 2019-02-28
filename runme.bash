#!/bin/bash

for B in 100 20000000 100000000 200000000; do
    
    mkdir "Prueba con $B y 03625"
    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B $B -C 1 -P0 0.3625
    echo "Completada prueba con $B"
    mv "GRCh38.meta" "Prueba con $B y 03625"
    mv "GRCh38.align" "Prueba con $B y 03625"
    cp "Encoder" "Prueba con $B y 03625"
    cd "Prueba con $B y 03625"
    ./Encoder
    cd ..

done
