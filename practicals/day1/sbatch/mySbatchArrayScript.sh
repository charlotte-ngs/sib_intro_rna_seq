#!/usr/bin/bash
#SBATCH --job-name=test_array
#SBATCH --time=00:30:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH -o test_array_log.%a.o
#SBATCH --array 1-10%5


echo "job array id" $SLURM_ARRAY_TASK_ID

# sed -n <X>p <file> : retrieve line <X> of file
# so the next line grabs the file name corresponding to our job array task id and store it in the variable ReadFileName
ReadFileName=`sed -n ${SLURM_ARRAY_TASK_ID}p readFiles.txt`

# here we would put the mapping command or whatever
echo $ReadFileName
