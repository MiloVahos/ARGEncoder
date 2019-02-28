#!/bin/bash
:'
mkdir "Prueba0"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 100 -C 1 -P0 0.3625
echo "Completado la prueba 0"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "Prueba0"

mkdir "PruebaA1"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 5 -P0 0.02
echo "Completado la prueba A1"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaA1"

mkdir "PruebaA2"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 5 -P0 0.3625
echo "Completado la prueba A2"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaA2"

mkdir "PruebaB1"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 50 -P0 0.02
echo "Completado la prueba B1"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaB1"

mkdir "PruebaB2"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 50 -P0 0.3625
echo "Completado la prueba B2"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaB2" 

mkdir "PruebaC1"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 250 -P0 0.02
echo "Completado la prueba C1"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaC1"

mkdir "PruebaC2"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 250 -P0 0.3625
echo "Completado la prueba C2"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaC2"
'
mkdir "PruebaD1"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 100000000 -C 1 -P0 0.02
echo "Completado la prueba D1"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaD1"

mkdir "PruebaD2"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 100000000 -C 1 -P0 0.3625
echo "Completado la prueba D2"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaD2" 

mkdir "PruebaE1"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000000 -C 1 -P0 0.02
echo "Completado la prueba E1"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaE1"

mkdir "PruebaE2"
time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000000 -C 1 -P0 0.3625
echo "Completado la prueba E2"
rm "GRCh38.meta"
rm "GRCh38.fastq"
rm "GRCh38.fastqseq"
mv "GRCh38.align" "PruebaE2" 

#for P0 in 1 0.6575 0.5075 0.4225 0.3625 0.32 0.2875 0.2625 0.2425 0.225 0.21 0.1975 0.185 0.175 0.1675 0.16 0.1525 0.1475 0.14 0.135 0.13 0.115 0.1025 0.0775 0.0575 0.0475 0.035 0.0275 0.02; do
#    mkdir "Prueba con P0 = $P0"
#    time ./ARF -DATA GRCh38.fa -I -Q -L 1024 -B 200000 -C 30 -P0 $P0
#    echo "   Termino Prueba con $P0"
#    mv "GRCh38.fastq" "Prueba con P0 = $P0"
#    mv "GRCh38.fastqseq" "Prueba con P0 = $P0" 
#    mv "GRCh38.meta" "Prueba con P0 = $P0"
#    mv "GRCh38.align" "Prueba con P0 = $P0"
#done
