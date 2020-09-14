#!/usr/bin/env bash

### miniconda installation
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

### set up python environment
conda create --name ml python=3.6 jupyter notebook numpy pandas scipy scikit-learn seaborn matplotlib ase
conda activate ml
sudo apt-get update && apt-get upgrade
sudo apt-get install gfortran -y
pip install amp-atomistics

### 