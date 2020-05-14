#!/bin/bash
apt-get update && apt-get install build-essential wget zip unzip -y

wget http://interactivebrokers.github.io/downloads/twsapi_macunix.976.01.zip
unzip twsapi_macunix.976.01.zip -d $HOME/ && cd $HOME/IBJts/source/pythonclient && python3 setup.py build install

cd $HOME
wget https://artiya4u.keybase.pub/TA-lib/ta-lib-0.4.0-src.tar.gz
tar -xvf ta-lib-0.4.0-src.tar.gz
cd ta-lib/
./configure --prefix=/usr
make
make install

cd $HOME
pip install --upgrade pip && pip install -r requirements.txt

