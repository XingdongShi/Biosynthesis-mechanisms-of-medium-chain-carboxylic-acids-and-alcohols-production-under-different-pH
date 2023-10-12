#!/bin/bash

#PBS -N eggnog_mapper
#PBS -l ncpus=56
#PBS -l mem=100gb
#PBS -l walltime=100:00:00

# Load the conda environment
source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate eggnog-mapper

# Define some common paths
prokka_dir="$HOME/bin_prokka"
output_dir="$HOME/eggnog_output"
log_file="$HOME/log2.txt"

# Loop through prokka output files
for id in "$prokka_dir"/*.output; do
    file=$(basename "$id")
    sample="${file%.*.*}"
    
    # Create a directory for each sample
    mkdir -p "$output_dir/$sample"
    
    # Change to the sample directory
    cd "$output_dir/$sample" || exit 1

    # Run eggnog-mapper
    echo "Currently processing: $sample" > "$log_file"
    $HOME/miniconda2/envs/eggnog-mapper/bin/emapper.py --cpu 56 -o "$sample" --output_dir "$output_dir/$sample" -m diamond --override -i "PROKKA_$sample.faa" --evalue 0.001 --score 60 --pident 40 --query_cover 20 --subject_cover 20 --itype proteins --tax_scope auto --target_orthologs all --go_evidence non-electronic --pfam_realign none --report_orthologs --decorate_gff yes --excel

    echo "$sample has been processed." >> "$log_file"
    
    # Change back to the home directory
    cd "$HOME" || exit 1
done

# Deactivate the conda environment
conda deactivate