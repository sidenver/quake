#!/bin/bash
#SBATCH --ntasks=1
#SBATCH -t 00:03:00
#SBATCH --mem-per-cpu=2048
#SBATCH --share
#SBATCH -p debug

OMP_NUM_THREADS=1
echo $OMP_NUM_THREADS
export OMP_NUM_THREADS

./quake < quake.in > quakeTruth.log