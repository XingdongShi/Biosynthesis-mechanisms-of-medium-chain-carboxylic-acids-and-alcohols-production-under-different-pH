#!/bin/bash
#PBS -N QC
#PBS -l ncpus=24
#PBS -l mem=20gb
#PBS -l walltime=10:00:00

set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "${SCRATCH}/RAW_READS"
mkdir -p "${SCRATCH}/READ_QC"

cd ${SCRATCH}/RAW_READS

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/${SAMPLE}_1.fastq" || ! -f "$HOME/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/${SAMPLE}_1.fastq" "${SCRATCH}/RAW_READS"
    cp "$HOME/${SAMPLE}_2.fastq" "${SCRATCH}/RAW_READS"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

cd ${SCRATCH}/

# Running quality control for each sample
metawrap read_qc -1 RAW_READS/L1EFJ120285_1.fastq -2 RAW_READS/L1EFJ120285_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120285 >> "$LOG_FILE" 2>&1
metawrap read_qc -1 RAW_READS/L1EFJ120286_1.fastq -2 RAW_READS/L1EFJ120286_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120286 >> "$LOG_FILE" 2>&1
metawrap read_qc -1 RAW_READS/L1EFJ120287_1.fastq -2 RAW_READS/L1EFJ120287_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120287 >> "$LOG_FILE" 2>&1
metawrap read_qc -1 RAW_READS/L1EFJ120288_1.fastq -2 RAW_READS/L1EFJ120288_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120288 >> "$LOG_FILE" 2>&1

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/READ_QC" ]]; then
    if [[ -d "$HOME/READ_QC" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    mv "${SCRATCH}/READ_QC" "$HOME/READ_QC"
fi

rm ${SCRATCH}/
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi