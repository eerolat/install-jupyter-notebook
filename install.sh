#!/bin/bash


# Tuomas Eerola - 2019

echo '==== This script will install Jupyter Notebook'
echo '==== on your Debian 9 or Ubuntu 18.03 LTS Linux.'
echo '==== Jupyter Notebook will be launched automatically'
echo '==== when the installation is complete.'
echo '===='


sudo apt update
sudo apt -y install python3-pip python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir ~/myprojectdir
cd ~/myprojectdir
virtualenv myprojectenv
source myprojectenv/bin/activate
pip install --user jupyter
~/.local/bin/jupyter notebook
