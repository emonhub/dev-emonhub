Script to install emonHub from git for development
--------------------------------------------------

Use this commandline to install a "development" version of emonHub

    git clone https://github.com/emonhub/dev-emonhub.git && dev-emonhub/install.sh
    
This script is not intended to fully install emonHub, It clones into "emonhub" folder in home directory and symlinks the files to where they are supposed to be.

Edit configurations

    nano /etc/emonhub/emonhub.conf

View last 10 logfile entries

    tail /var/log/emonhub.log
    
-----------------------------------------------------------------   
    
    
To update from git repo and retain existing configuration file

    cd /home/pi/emonhub
    cp conf/emonhub.conf /home/pi/emonhub.conf
    git pull
    rm conf/emonhub.conf
    mv /home/pi/emonhub.conf conf/emonhub.conf
    
But if there have been any updates to the emonhub.conf file on git those changes will have to be added manually

    nano /etc/emonhub/emonhub.conf

