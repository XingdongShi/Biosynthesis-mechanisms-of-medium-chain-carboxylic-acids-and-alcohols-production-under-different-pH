#!/bin/bash
#PBS -N Assembly
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00

set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

#Concatinate the reads from all the samples:

cd $SCRATCH

cat L*_1.fastq > ALL_READS_1.fastq
cat L*_2.fastq > ALL_READS_2.fastq

# Assemble the reads

echo "Assemble started at $(date)" | tee -a "$LOG_FILE"
metawrap assembly -1 ALL_READS_1.fastq -2 ALL_READS_2.fastq -m 500 -t 50 --metaspades -o ASSEMBLY >> "$LOG_FILE" 2>&1
echo "Assemble ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/ASSEMBLY" ]]; then
    if [[ -d "$HOME/ASSEMBLY" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    rsync -a "${SCRATCH}/ASSEMBLY" "$HOME/ASSEMBLY"
else
    echo "ASSEMBLY directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"

#
rm ${SCRATCH}/*.raw.fastq
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi