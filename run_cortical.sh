#!/bin/bash
#SBATCH --job-name=pythonMPIexample
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
#SBATCH --mem=2GB
#SBATCH --time=01:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=zy2043@nyu.edu
#SBATCH --output=cort.out
#SBATCH --error=cort.err

module purge
module load python/intel/3.8.6
module load openmpi/intel/4.0.5

source /scratch/zy2043/cortical/bin/activate
srun python /scratch/zy2043/cortical_changed/CORTICAL.py --dim=2 