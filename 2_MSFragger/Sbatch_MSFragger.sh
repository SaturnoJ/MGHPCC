#!/bin/bash
#SBATCH --partition=steen-compute 	#Queue to be used?
#SBATCH --account=steen		#account name
#SBATCH --time=239:59:59 		#12 hours. Normal search (i.e. tryptic, Oxidation and acetylation) will take +- 2 hours with 30 input files...
#SBATCH --job-name=MSfragger 		#Job name
#SBATCH --nodes=1			#Number of Nodes needed
#SBATCH --cpus-per-task=48		#Number of CPUS needed
#SBATCH --mem=360GB			#Memory needed	
#SBATCH --qos=steen

export LC_ALL=C

#source the settings and mzBIN arrays
source $1/settings/settings.sh

#Load Singularity on the Node
module load singularity

#Run job
singularity exec --bind $inputdirectory,$outputdirectory,$fragpipeDirectory $container $1/settings/MSFragger/MSFragger.sh "$1" 
