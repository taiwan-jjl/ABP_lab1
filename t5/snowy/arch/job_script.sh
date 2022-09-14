#!/bin/bash -l

#SBATCH -A uppmax2022-2-19  # project name
#SBATCH -M snowy            # name of system
#SBATCH -p node             # request a full node
#SBATCH -N 1                # request 1 node
#SBATCH -t 10:00:00          # job takes at most 1 hour
#SBATCH --gres=gpu:1 --gpus-per-node=1 # use the GPU nodes
#SBATCH -J stream_cuda      # name of the job
#SBATCH -D ./               # stay in current working directory

module purge
module use /sw/EasyBuild/snowy/modules/all/
module load intelcuda

echo "./stream_triad_cuda -min 8 -max 1e8 -align 0"
./stream_triad_cuda -min 8 -max 1e8 -align 0
