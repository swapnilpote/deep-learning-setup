# This script is designed to work with ubuntu 16.04 LTS

# ensure system is updated and has basic build tools
sudo apt-get update
sudo apt-get --assume-yes upgrade
sudo apt-get --assume-yes install tmux build-essential gcc g++ make binutils
sudo apt-get --assume-yes install software-properties-common

# install Anaconda for current user
wget "https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh" -O "Anaconda3-4.4.0-Linux-x86_64.sh"
bash "Anaconda3-4.4.0-Linux-x86_64.sh" -b

echo "export PATH=\"$HOME/anaconda3/bin:\$PATH\"" >> ~/.bashrc
export PATH="$HOME/anaconda3/bin:$PATH"
conda upgrade -y --all

# install and configure tensorflow
pip install tensorflow==1.1.0
