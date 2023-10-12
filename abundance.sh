#!/bin/bash
#PBS -N quant
#PBS -l ncpus=30
#PBS -l mem=100gb
#PBS -l walltime=100:00:00


set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "${SCRATCH}/CLEAN_READS"

cd ${SCRATCH}/CLEAN_READS

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
      cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/CLEAN_READS"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/CLEAN_READS"
done >> "$LOG_FILE" 2>&1

echo "Copying ASSEMBLY file"
cp -r "$HOME/ASSEMBLY/ASSEMBLY" "${SCRATCH}"

echo "Copying BIN_REFINEMENT file"
cp -r "$HOME/BIN_REFINEMENT" "${SCRATCH}"


source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

cd ${SCRATCH}/

# Running quality control for each sample
metawrap quant_bins -t 30 -b BIN_REFINEMENT/metawrap_50_10_bins -o QUANT_BINS -a ASSEMBLY/final_assembly.fasta CLEAN_READS/L*.fastq >> "$LOG_FILE" 2>&1

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/QUANT_BINS" ]]; then
    if [[ -d "$HOME/QUANT_BINS" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    mv "${SCRATCH}/QUANT_BINS" "$HOME"
fi

rm ${SCRATCH}/
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi