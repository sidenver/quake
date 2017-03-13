#!/bin/bash
#SBATCH --ntasks=4
#SBATCH -t 00:03:00
#SBATCH --mem-per-cpu=2048
#SBATCH --share


OMP_NUM_THREADS=4
echo $OMP_NUM_THREADS
export OMP_NUM_THREADS

./quake < quake.in > quake4.log