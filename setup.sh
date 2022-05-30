cd ~
mkdir inst
cd inst
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh
# install mininconda
# export PATH=$PATH:/root/miniconda3/bin
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
# promt
# sudo sh cuda_11.7.0_515.43.04_linux.run
# export PATH=/usr/local/cuda-11.7/bin${PATH:+:${PATH}}

cd ~
apt install git
git clone git@github.com:Melnikovartem/reg-svox2.git

cd ~/reg-svox2/svox2
conda env create -f environment.yml
source activate plenoxel
pip install .

cd ~/reg-svox2
pip install jupyter

# for public server
# jupyter notebook --generate-config
# vi /root/.jupyter/jupyter_notebook_config.py
# # c.NotebookApp.ip = '0.0.0.0'
# # c.NotebookApp.allow_origin = '*'

# dset
pip install gdown
gdown https://drive.google.com/u/0/uc?id=1PG-KllCv4vSRPO7n5lpBjyTjlUyT8Nag&export=download

