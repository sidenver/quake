#!/bin/bash
#SBATCH --ntasks=4
#SBATCH -t 00:03:00
#SBATCH --mem-per-cpu=2048
#SBATCH --share
#SBATCH -p debug

OMP_NUM_THREADS=4
export OMP_NUM_THREADS

gcc -fopenmp -o quake quake_openmp.c -lm
./quake < quake.in > quake4.log