#!/bin/bash

#SBATCH --job-name=cSharpTest
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=3GB
#SBATCH --time=1-20:00:00

module purge
module load mono/intel/4.8.0

srun mono IntegratorANDMutator.exe generation-0



