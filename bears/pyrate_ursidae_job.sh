#!/bin/bash
### PyRate bears analysis
### 10 runs in an array job

### name of job
#PBS -N pyrate_bears_array 
### time to stop job
#PBS -l walltime=12:00:00
### number of nodes/cpus to use *for each job*
### in this case each run of PyRate uses 1 CPU
#PBS -l select=1:ncpus=1:mem=16gb
### index range for subjobs
### this is how many runs of PyRate we want
#PBS -J 1-10

module add lang/python/anaconda/2.7-2019.10

python ~/PyRate_for_Python2/PyRate.py ~/Ursidae_PyRate.py -mG -n 100000000 -s 5000 -j $PBS_ARRAY_INDEX
