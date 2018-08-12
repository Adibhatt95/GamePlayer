#!/bin/bash

#SBATCH --job-name=paladinEVO
#SBATCH --nodes=1 --ntasks-per-node=1
#SBATCH --time=1-20:00:00
#SBATCH --mem=1GB
#SBATCH --output=worker_%A_%a.out
#SBATCH --error=worker3.err
#SBATCH --array=1-400

module purge
module load mono/intel/4.8.0

srun mono GamePlayer.exe $SLURM_ARRAY_TASK_ID generation-0 400 1