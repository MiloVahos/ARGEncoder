#!/bin/bash

for C in 4 5 6; do
    mkdir "Prueba con C = $C"
    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 5000000 -C $C -P0 0.2
    echo "   Termino Prueba con $C"
    mv "GRCh38.align" "Prueba con C = $C" 
done

mkdir "Prueba con B = 20357211"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 20357211 -C 1 -P0 0.2
echo "   Prueba con B = 20357211"
mv "GRCh38.align" "Prueba con B = 20357211"

mkdir "Prueba con B = 19999999"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 19999999 -C 1 -P0 0.2
echo "   Prueba con B = 19999999"
mv "GRCh38.align" "Prueba con B = 19999999"

#for P0 in 1 0.6575 0.5075 0.4225 0.3625 0.32 0.2875 0.2625 0.2425 0.225 0.21 0.1975 0.185 0.175 0.1675 0.16 0.1525 0.1475 0.14 0.135 0.13 0.115 0.1025 0.0775 0.0575 0.0475 0.035 0.0275 0.02; do
#    mkdir "Prueba con P0 = $P0"
#    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 30 -P0 $P0
#    echo "   Termino Prueba con $P0"
#    mv "GRCh38.fastq" "Prueba con P0 = $P0"
#    mv "GRCh38.fastqseq" "Prueba con P0 = $P0" 
#    mv "GRCh38.meta" "Prueba con P0 = $P0"
#    mv "GRCh38.align" "Prueba con P0 = $P0"
#done
