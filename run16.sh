#!/bin/bash
#SBATCH --ntasks=16
#SBATCH -t 00:03:00
#SBATCH --mem-per-cpu=2048
#SBATCH --share
#SBATCH -p debug

OMP_NUM_THREADS=16
export OMP_NUM_THREADS
# module load gcc
# gcc -fopenmp -o quake quake_openmp.c -lm
./quake < quake.in > quake16.log