#!/bin/sh

### set git cloned location
GIT_PATH=/home/pi/emonhub

### set location to install emonhub.py etc
INST_PATH=/usr/share/emonhub

### set private emonhub.conf location
CONF_PATH=/home/pi

### clone emonhub
git clone https://github.com/emonhub/emonhub.git

### switch to development branch
cd emonhub
git checkout development
cd ../

### create linked directory for emonhub.py etc
sudo rm -r -f $INST_PATH
sudo ln -s $GIT_PATH/src $INST_PATH

### link init script
sudo rm -f /etc/init.d/emonhub
sudo ln -s $GIT_PATH/service/emonhub /etc/init.d/emonhub

### link default locations file
sudo rm -f /etc/default/emonhub
sudo ln -s $GIT_PATH/conf/default/emonhub /etc/default/emonhub

### create folder and link for settings file
sudo mkdir -p /etc/emonhub
sudo rm -f /etc/emonhub/emonhub.conf
sudo ln -s $GIT_PATH/conf/emonhub.conf /etc/emonhub/emonhub.conf

# launch at start-ip
sudo update-rc.d emonhub defaults 99

###install dependancies
sudo apt-get install -y python-serial python-configobj

### create "emonhub" user
sudo useradd -M -r -G dialout,tty -c "emonHub user" emonhub

### start emonhub
sudo service emonhub restart

### delete install script
sudo rm -r dev-emonhub
