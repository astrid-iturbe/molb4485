#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=aiturbe@uwyo.edu
#SBATCH --account=inbre-train

#SBATCH --ntasks-per-node=8
#SBATCH partition=inv-inbre

echo "starting raxm1HPC run at $(date)"
module load swset gcc raxml
raxmlHPC-PTHREADS-AVX -T 8  -f a -m GTRGAMMA -p 618 -N 50  -x 309 -s AllBears.aln -n AllBearTree -w /project/inbre-train/inbre010/molb4485/iturbe_phylo/AllBears -o Giant-panda 

echo "RAxML has finished at $(date)"

