#!/bin/bash
#SBATCH --job-name=pythonMPIexample
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
#SBATCH --mem=2GB
#SBATCH --time=01:00:00

module purge
module load python/intel/3.8.6
module load openmpi/intel/4.0.5

source /scratch/zy2043/cortical/bin/activate
srun /scratch/zy2043/cortical_changed/CORTICAL.py --dim=2 --channel=MIMO