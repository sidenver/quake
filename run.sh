#!/bin/bash
#SBATCH --ntasks=16
#SBATCH -t 00:00:30
#SBATCH --mem-per-cpu=2048
#SBATCH --exclusive

OMP_NUM_THREADS=$SLURM_NTASKS
export OMP_NUM_THREADS

