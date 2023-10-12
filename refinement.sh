#!/bin/bash
#PBS -N BIN_REFINEMENT
#PBS -l ncpus=54
#PBS -l mem=500gb
#PBS -l walltime=100:00:00

set -e
trap 'echo "An error occurred at line $LINENO. Exiting..." | tee -a "$LOG_FILE"; exit 1' ERR

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"/BIN_REFINEMENT
mkdir -p "$SCRATCH"/INITIAL_BINNING

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Check and copy final_assembly.fasta outside of loop to avoid redundancy

cp -r "$HOME/INITIAL_BINNING/INITIAL_BINNING" "${SCRATCH}/"

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

# Concatenate the reads from all the samples
cd $SCRATCH

# Bin reads by maxbin2
echo "refinement started at $(date)" | tee -a "$LOG_FILE"
metawrap bin_refinement -o BIN_REFINEMENT -t 54 -m 500 -A INITIAL_BINNING/metabat2_bins/ -B INITIAL_BINNING/maxbin2_bins/ -C INITIAL_BINNING/concoct_bins/ -c 50 -x 10 >> "$LOG_FILE" 2>&1
echo "refinement ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/BIN_REFINEMENT" ]]; then
    if [[ -d "$HOME/BIN_REFINEMENT" ]]; then
        echo "Target directory already exists, merging contents with backup..." | tee -a "$LOG_FILE"
    fi
    rsync -a --backup "${SCRATCH}/BIN_REFINEMENT" "$HOME"
else
    echo "BIN_REFINEMENT directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"
