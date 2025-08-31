#!/bin/bash
# Stage 0 Project 1 & 2
# Author: Stephen Oyejide
# Description: Bash script to complete Stage 0 tasks for Biocomputing and Conda installations

set -euo pipefail  # safer scripting: exit on error, undefined vars, and failed pipes

### ------------------ PROJECT 1: Bash Basics ------------------ ###

# 1. Print your name
echo "Stephen Oyejide"

# 2. Create a folder titled your name
mkdir -p "Stephen_Oyejide"

# 3. Create a new directory titled biocomputing and change into it
mkdir -p biocomputing && cd biocomputing || exit

# 4. Download the required files
wget -q https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget -q https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget -q https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk -O wildtype_dup.gbk

# 5. Move the .fna file into the folder with my name
mv wildtype.fna ../Stephen_Oyejide/

# 6. Delete the duplicate gbk file
rm -f wildtype_dup.gbk

# 7. Confirm if the .fna file is mutant or wild type
cd ../Stephen_Oyejide || exit
if grep -qi "tatatata" wildtype.fna; then
    echo "The sequence is MUTANT"
    # 8. Print all matching lines into a new file
    grep -i "tatatata" wildtype.fna > mutant_sequences.txt
else
    echo "The sequence is WILDTYPE"
fi

# 9. Count number of lines (excluding header) in the .gbk file
cd ../biocomputing || exit
grep -v "^#" wildtype.gbk | wc -l

# 10. Print the sequence length from the LOCUS tag
grep "LOCUS" wildtype.gbk | awk '{print $3}'

# 11. Print the source organism from the SOURCE tag
grep "SOURCE" wildtype.gbk | head -n 1

# 12. List all gene names in the .gbk file
grep "/gene=" wildtype.gbk

# 13. Clear terminal space and print all commands used today
clear
history

# 14. List files in the two folders
echo "Files in biocomputing:"
ls ../biocomputing
echo "Files in Stephen_Oyejide:"
ls ../Stephen_Oyejide

### ------------------ PROJECT 2: Bioinformatics Software ------------------ ###

# 1. Activate the base conda environment
conda activate base

# 2. Create a conda environment named funtools
conda create -n funtools -y

# 3. Activate the funtools environment
conda activate funtools

# 4. Install Figlet
conda install -c bioconda figlet -y

# 5. Run figlet with my name
figlet "Stephen Oyejide"

# 6-13. Install bioinformatics tools via bioconda
conda install -c bioconda bwa -y
conda install -c bioconda blast -y
conda install -c bioconda samtools -y
conda install -c bioconda bedtools -y
conda install -c bioconda spades -y
conda install -c bioconda bcftools -y
conda install -c bioconda fastp -y
conda install -c bioconda multiqc -y


### ------------------ PROFESSIONAL PROFILE ------------------ ###
# GitHub Repository: https://github.com/Undisputed-lab/Stage_0_project_1_sh.git
# LinkedIn Video:https://www.linkedin.com/posts/chairunnisa-amanda_hackbiointernship-biocoding-bash-activity-7367566727838171136-Lr19?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAABiNTiMBvkjmS6BuO4cWXOJ_Do45V6MlVSg
