# #!/usr/bin/env bash

sudo apt-get update 

#  Python install
sudo apt-get install -y  build-essential checkinstall
sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

cd /tmp
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tar.xz
sudo tar xf Python-3.6.0.tar.xz
cd Python-3.6.0
sudo ./configure
sudo make altinstall

# # Git install
sudo apt-get install -y git

# # redis install
sudo apt-get install -y redis-server

#mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org

