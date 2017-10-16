#!/bin/bash
#SBATCH --job-name=protein_db
#SBATCH --time=48:00:00
#SBATCH --output=protein_db.log
#SBATCH --error=protein_db.log
#SBATCH --mem-per-cpu=16G
#SBATCH --mail-type=FAIL,DONE

source activate virus_db
cd ..
python protein_db.py

