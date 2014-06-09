Script to install emonHub from git for development
--------------------------------------------------

Use this commandline to install a "development" version of emonHub

    git clone https://github.com/emonhub/dev-emonhub.git && dev-emonhub/install.sh
    
This script is not intended to fully install emonHub, It clones into "emonhub" folder in home directory and symlinks the files to where they are supposed to be.

Edit configurations

    nano emonhub/conf/emonhub.conf

