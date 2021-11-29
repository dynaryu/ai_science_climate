#!/bin/bash
#PBS -N pangeo_test
#PBS -P il82
#PBS -q gpuvolta
#PBS -l walltime=5:00:00
#PBS -l ncpus=12
#PBS -l ngpus=1
#PBS -l mem=20GB
#PBS -l jobfs=100GB
#PBS -l storage=scratch/vp91
#PBS -v PYTHONPATH=/scratch/vp91/apps/lib/3.7.4/lib/python3.7/site-packages/:$PYTHONPATH
module load pangeo/2021.01
module load tensorflow/2.3.0
pangeo.ini.all.sh
sleep infinity
