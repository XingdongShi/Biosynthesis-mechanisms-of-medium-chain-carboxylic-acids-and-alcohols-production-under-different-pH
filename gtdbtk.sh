#!/bin/bash

#PBS -N gtdbtk
#PBS -l ncpus=50
#PBS -l mem=1000gb
#PBS -l walltime=10:00:00

# Load the conda environment
source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate gtdbtk

# Set input and output directories
genome_dir="$HOME/BIN_REASSEMBLY/reassembled_bins"
out_dir="$HOME/gtdbtk"
log_file="gtdbtk.log"

# Run gtdbtk classify_wf
gtdbtk classify_wf --genome_dir "$genome_dir" --out_dir "$out_dir" --extension fa --cpus 50 --mash_db "$HOME/mash" >> "$log_file" 2>&1

# Deactivate the conda environment
conda deactivate
