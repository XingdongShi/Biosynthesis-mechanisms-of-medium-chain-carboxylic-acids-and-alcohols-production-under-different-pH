#!/bin/bash
#PBS -N maxbin2
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00

set -e
trap 'echo "An error occurred at line $LINENO. Exiting..." | tee -a "$LOG_FILE"; exit 1' ERR

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"/CLEAN_READS
mkdir -p "$SCRATCH"/INITIAL_BINNING

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Check and copy final_assembly.fasta outside of loop to avoid redundancy
if [[ ! -f "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" ]]; then
    echo "final_assembly.fasta not found!" | tee -a "$LOG_FILE"
    exit 1
fi
cp "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" "${SCRATCH}/"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/CLEAN_READS/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/CLEAN_READS/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

# Concatenate the reads from all the samples
cd $SCRATCH

# Bin reads by maxbin2
echo "Assemble started at $(date)" | tee -a "$LOG_FILE"
metawrap binning -o INITIAL_BINNING -t 50 -m 500 -a final_assembly.fasta --maxbin2 CLEAN_READS/L1EGH120058*.fastq >> "$LOG_FILE" 2>&1
echo "Assemble ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/INITIAL_BINNING" ]]; then
    if [[ -d "$HOME/INITIAL_BINNING" ]]; then
        echo "Target directory already exists, merging contents with backup..." | tee -a "$LOG_FILE"
    fi
    rsync -a --backup "${SCRATCH}/INITIAL_BINNING" "$HOME/INITIAL_BINNING"
else
    echo "INITIAL_BINNING directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"