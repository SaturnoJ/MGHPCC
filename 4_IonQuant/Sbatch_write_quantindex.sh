#!/bin/bash
#SBATCH --partition=steen-compute 	#Queue to be used?
#SBATCH --account=steen		#account name
#SBATCH --time=6:00:00 		#12 hours. Normal search (i.e. tryptic, Oxidation and acetylation) will take +- 2 hours with 30 input files...
#SBATCH --job-name=quantWrite 		#Job name
#SBATCH --nodes=1			#Number of Nodes needed
#SBATCH --cpus-per-task=2		#Number of CPUS needed
#SBATCH --mem=89GB			#Memory needed	#data set specific, take largest file mutliple by 8 to give largest memory pool
#SBATCH --qos=steen

export LC_ALL=C

#source the settings and mzBIN arrays
source $1/settings/settings.sh

#Load Singularity on the Node
module load singularity

#Run job
singularity exec --bind $inputdirectory,$outputdirectory,$fragpipeDirectory $container $1/settings/IonQuant/Write_quantindex.sh "$1" "$SLURM_JOBID" "$SLURM_ARRAY_TASK_ID"
