#!/bin/bash
#SBATCH --ntasks=1
#SBATCH -t 00:00:30
#SBATCH --mem-per-cpu=2048
#SBATCH --exclusive

OMP_NUM_THREADS=1
echo $OMP_NUM_THREADS
export OMP_NUM_THREADS

./quake quake.in.short