#!/bin/bash
#SBATCH --ntasks=8
#SBATCH -t 00:03:00
#SBATCH --mem-per-cpu=2048
#SBATCH --share
#SBATCH -p debug

OMP_NUM_THREADS=8
export OMP_NUM_THREADS
# module load gcc
# gcc -fopenmp -o quake quake_openmp.c -lm
./quake < quake.in > quake8.log