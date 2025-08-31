1. Activate your base conda environment
$ conda activate base

2. Create a conda environment named funtools
$ conda create -n funtools

3. Activate the funtools environment
$ conda activate funtools

4. Install Figlet using conda or apt-get

Using conda:

$ conda install -c conda-forge figlet


Or using apt-get:

$ sudo apt-get install figlet
# to confirm figlet was installed
figlet --version
echo "figlet" successfully installed

5. Run figlet with your name
$ figlet "Stephen Oyejide"

6. Install bwa through the bioconda channel
$ conda install -c bioconda bwa
# to confirm bwa was installed
bwa --version
echo "bwa" successfully installed

7. Install blast through the bioconda channel
$ conda install -c bioconda blast
# to confirm blast was installed
blast --version
echo "blast" successfully installed

8. Install samtools through the bioconda channel
$ conda install -c bioconda samtools
# to confirm samtools was installed
samtools --version
echo "samtools" successfully installed

9. Install bedtools through the bioconda channel
$ conda install -c bioconda bedtools
# to confirm bedtools was installed
bedtools --version
echo "bedtools" successfully installed

10. Install spades.py through the bioconda channel
$ conda install -c bioconda spades
# to confirm spades was installed
spades --version
echo "spades" successfully installed

11. Install bcftools through the bioconda channel
$ conda install -c bioconda bcftools
# to confirm bcftools was installed
bcftools --version
echo "bcftools" successfully installed

12. Install fastp through the bioconda channel
$ conda install -c bioconda fastp
# to confirm fastp was installed
fastp --version
echo "fastp" successfully installed

13. Install multiqc through the bioconda channel
$ conda install -c bioconda multiqc
# to confirm multiqc was installed
multiqc --version
echo "multiqc" successfully installed
