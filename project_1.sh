#!/bin/bash
# Stage 0 - Project 1: Bash Basic

# 1. Print your name
echo "Stephen Oyejide"

# 2. Create a folder titled your name
mkdir -p "Stephen Oyejide"

# 3. Create a new directory titled biocomputing and change to that directory
mkdir -p biocomputing && cd biocomputing

# 4. Download the 3 files
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk -O wildtype_dup.gbk

# 5. Move the .fna file to the folder titled your name
mv wildtype.fna ../"Stephen Oyejide"/

# 6. Delete the duplicate gbk file
rm wildtype_dup.gbk

# 7. Confirm if the .fna file is mutant or wild type (tatatata vs tata)
cd ../"Stephen Oyejide"
if grep -q "tatatata" wildtype.fna; then
    echo "Mutant"
    # 8. If mutant, print all matching lines into a new file
    grep "tatatata" wildtype.fna > mutant_matches.txt
else
    echo "Wild type"
fi

# 9. Count the number of lines (excluding the header) in the .gbk file
cd ../biocomputing
echo "Number of lines (excluding header) in .gbk:"
grep -v "^LOCUS" wildtype.gbk | wc -l

# 10. Print the sequence length of the .gbk file. (Use LOCUS tag)
echo "Sequence length:"
grep "^LOCUS" wildtype.gbk | awk '{print $3}'

# 11. Print the source organism of the .gbk file. (Use SOURCE tag)
echo "Source organism:"
grep "^SOURCE" wildtype.gbk | head -1 | awk '{$1=""; print $0}'

# 12. List all the gene names of the .gbk file
echo "Gene names:"
grep "/gene=" wildtype.gbk

# 13. Clear your terminal space and print all commands used today
history > commands_used.txt
clear
cat commands_used.txt
history
