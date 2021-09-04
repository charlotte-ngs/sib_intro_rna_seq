#!/usr/bin/bash
#SBATCH --job-name=test
#SBATCH --time=00:30:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH -o test_log.o


echo "looking at the size of the elements of /shared/data/"
sleep 10 # making the script wait for 10 seconds - this is just so we can see it later on.
# `du` is a command that returns the size of a folder structure.
du -h -d 2 /shared/data/
