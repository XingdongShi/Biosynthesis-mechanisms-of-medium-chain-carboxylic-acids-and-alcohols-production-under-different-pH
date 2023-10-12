#!/bin/bash

#PBS -N Cazyme
#PBS -l ncpus=56
#PBS -l mem=100gb
#PBS -l walltime=100:00:00

# Change to the directory where the dbCAN database is located
cd $HOME/biodatabase/dbCAN/

# Format the database for hmmscan
hmmpress dbCAN.txt

# Load the conda environment
source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate dbcan

# Loop through prokka output files
for id in /shared/homes/13949072/binning/bin_prokka/*.output; do
    # Change to the folder that contains amino acid sequences of genomes
    cd "$id"
    
    # Perform hmmscan
    find . -name "*.faa" | while read line; do
        hmmscan --domtblout "${line}.out.dm" $HOME/biodatabase/dbCAN/dbCAN.txt "$line" > "${line}.out"
    done
    
    # Parse the hmmscan results
    find . -name "*.out.dm" | while read line; do
        python $HOME/hmmscan-parser.py "$line" > "${line}.ps"
    done
    
    # Move the parsed hmmscan results to the 'results' directory
    mv *.out.dm.ps $HOME/results/
    mv *.dm $HOME/others/
    mv *.out $HOME/others/
done

# Deactivate the conda environment
conda deactivate