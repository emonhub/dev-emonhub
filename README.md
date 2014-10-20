Script to install emonHub from git for development
--------------------------------------------------

Use this command to install a "development" version of emonHub

    git clone https://github.com/emonhub/dev-emonhub.git ~/dev-emonhub && ~/dev-emonhub/install
    
This script is not intended to fully install emonHub, It clones into "emonhub" folder in users home directory and symlinks the files to where they are supposed to be for development purposes.

Edit configuration file

    nano /etc/emonhub/emonhub.conf

View last 10 logfile entries and monitor new log entries

    tail -f /var/log/emonhub/emonhub.log
    
-----------------------------------------------------------------

NOTE - There can only be one software using the serial UART and therefore the RFM2Pi at any time so if you intend to use emonHub to interface with an RFM2Pi you must first remove or stop any programs that attempt to access the RFM2Pi.
    
-----------------------------------------------------------------   

Alternatively use this command to install a "development" version of emonHub in place of an existing raspberrypi module.

     git clone https://github.com/emonhub/dev-emonhub.git ~/dev-emonhub && ~/dev-emonhub/upgrade
    
USE WITH CAUTION! This will attempt to delete/remove the files expected to be found in a regular installation and then install emonHub.


