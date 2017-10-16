#!/bin/bash
#SBATCH --job-name=nr
#SBATCH --time=48:00:00
#SBATCH --output=nr.log
#SBATCH --error=nr.log
#SBATCH --mem-per-cpu=16G
#SBATCH --mail-type=FAIL,DONE

source activate virus_db
cd ..
python nr.py

