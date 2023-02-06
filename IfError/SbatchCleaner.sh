#!/bin/bash

#Will delete all old stuff everywhere.
sbatch -p steen-compute -w "compute-6-0"  -n 1 -c 1  --mem=1MB /lab-share/Path-Steen-e2/Public/Jason/MGHPCC/deleteScript.sh
#Will delete all old stuff everywhere.
sbatch -p steen-compute -w "compute-6-1"  -n 1 -c 1  --mem=1MB /lab-share/Path-Steen-e2/Public/Jason/MGHPCC/deleteScript.sh
#Will delete all old stuff everywhere.
#sbatch -p steen-compute -w "compute-6-2"  -n 1 -c 1  --mem=1MB /lab-share/Path-Steen-e2/Public/Jason/MGHPCC/deleteScript.sh
#Will delete all old stuff everywhere.
sbatch -p steen-compute -w "compute-6-3"  -n 1 -c 1  --mem=1MB /lab-share/Path-Steen-e2/Public/Jason/MGHPCC/deleteScript.sh
#Will delete all old stuff everywhere.
sbatch -p  steen-compute -w "gpu-m7c1-0-1"  -n 1 -c 1  --mem=1MB /project/Path-Steen/Patrick/MGHPCC/deleteScript.sh
#Will delete all old stuff everywhere.
sbatch -p steen-compute -w "gpu-m7c1-0-2"  -n 1 -c 1  --mem=1MB /project/Path-Steen/Patrick/MGHPCC/deleteScript.sh

rm /lab-share/Path-Steen-e2/Public/Jason/MGHPCC/slurm*.out
