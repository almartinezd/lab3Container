#!/bin/bash
# NOTE:
# --cpus-per-task parameter controls the number of
# cpus needed to run the current job.
#
# If your application runs sequentially, please set
# --cpus-per-task=1
# If you need to reserve the full node, please set
# --cpus-per-task=26

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno10/lab3Container
#SBATCH -J lab3
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE   # END/START/NONE
#SBATCH --mail-user=yourmail@um.es

echo "Tiempo de ejecución (Tamaño 13)"
echo
echo "Python"
time python ./k-mer13.py
echo
echo "C++"
time g++ -O2 -o k-mer13 ./k-mer13.cpp
echo
echo "Tiempo de ejecución (Tamaño 14)"
echo
echo "Python"
time python ./k-mer14.py
echo
echo "C++"
time g++ -O2 -o k-mer14 ./k-mer14.cpp
