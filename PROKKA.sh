#!/bin/bash

#PBS -N prokka
#PBS -l ncpus=50
#PBS -l mem=1000gb
#PBS -l walltime=10:00:00

# Define variables
CONDA_PROFILE="$HOME/miniconda2/etc/profile.d/conda.sh"
WORK_DIR="$HOME/BIN_REASSEMBLY/reassembled_bins"
OUTPUT_DIR="Bin_all/Bin_prokka"

# Activate Miniconda environment
source "$CONDA_PROFILE"

# Change to the working directory
cd "$WORK_DIR" || exit 1

# Loop through .fa files
for i in *.fa; do
    file="${i##*/}"
    base="${file%.fa}"
    thread=8  # Define the number of CPU threads
    prokka "$i" --outdir "$OUTPUT_DIR/$base" --prefix "$base" --metagenome --cpus "$thread" --kingdom Bacteria
    echo -e "\033[32m$i prokka Done...\033[0m"
done

# Create output directories
mkdir -p "$OUTPUT_DIR/prokka_out_table"
mkdir -p "$OUTPUT_DIR/prokka_map"
mkdir -p "$OUTPUT_DIR/prokka_map_table"

# Move prokka output files
echo -e "\033[32mMoving prokka files...\033[0m"
for i in "$OUTPUT_DIR/bin"*; do
    fold="${i##*/}"
    if [ -f "$i/$fold.tsv" ]; then
        mv "$i/$fold.tsv" "$OUTPUT_DIR/prokka_out_table"  # Move prokka .tsv files
    fi
    if [ -f "$i/$fold.gff" ]; then
        mv "$i/$fold.gff" "$OUTPUT_DIR/prokka_map"  # Move prokka .gff files
    fi
done

# Extract relevant information from prokka gff files
echo -e "\033[32mExtracting prokka gff information...\033[0m"
for i in "$OUTPUT_DIR/prokka_map/bin.*.gff"; do
    base="${i##*/}"
    if [ -f "$i" ]; then
        grep '^k' "$i" > "$OUTPUT_DIR/prokka_map_table/${base}.txt"
        sed -i '1 iseqid\tsource\ttype\tstart\tend\tscore\tstrand\tphase\tattributes' "$OUTPUT_DIR/prokka_map_table/${base}.txt"
    fi
done

# Run R script for prokka file count
echo -e "\033[32mRunning R script for prokka file count...\033[0m"
R CMD BATCH --args $HOME/prokka_fun_count.R
