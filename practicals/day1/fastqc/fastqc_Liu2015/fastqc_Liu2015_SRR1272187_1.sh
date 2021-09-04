#!/usr/bin/bash
#SBATCH --job-name=fastqc
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH -o fastqc_Liu2015.o
#SBATCH -e fastqc_Liu2015.e

dataDir=/shared/data/DATA/Liu2015

ml fastqc

# creating the output folder
mkdir -p FASTQC_Liu2015/

fastqc -o FASTQC_Liu2015/ $dataDir/SRR1272187_1.fastq.gz
