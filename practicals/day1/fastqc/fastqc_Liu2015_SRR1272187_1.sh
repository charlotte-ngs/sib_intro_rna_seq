#!/usr/bin/bash
#SBATCH --job-name=fastqc
#SBATCH --time=00:30:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH -o fastqc_Liu2015.o
#SBATCH -e fastqc_Liu2015.e

ml fastqc

dataDir=/shared/data/DATA/Liu2015

mkdir -p FASTQC_Liu2015/
$singularity_exec fastqc -o FASTQC_Liu2015/ $dataDir/SRR1272187_1.fastq.gz

