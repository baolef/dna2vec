#!/bin/bash

config='rna.yml'

while getopts c: flag; do
  case "${flag}" in
  c) config=${OPTARG} ;;
  esac
done

source /usr/local/anaconda3/etc/profile.d/conda.sh
conda activate 02763
nohup python scripts/train_dna2vec.py -c configs/$config 2>&1 &
