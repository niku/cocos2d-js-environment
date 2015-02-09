#!/bin/bash

user=vagrant
home=/home/${user}
cocos2d=cocos2d-js-v3.2

# install dependent packages
if ! type unzip > /dev/null 2>&1; then
    apt-get -y install unzip
fi

# download and unzip cocos2d-js
if [ ! -e ${home}/${cocos2d} ]; then
    cd /var/tmp
    sudo -u vagrant curl -O http://cdn.cocos2d-x.org/${cocos2d}.zip
    cd ${home}
    sudo -u vagrant unzip /var/tmp/${cocos2d}.zip
fi

# setup cocos2d-js
if ! grep COCOS_CONSOLE_ROOT ${home}/.bashrc > /dev/null 2>&1; then
    cd ${home}/${cocos2d}
    yes '' | sudo -u vagrant ./setup.py
fi

# prepare interface between host and guest
if [ ! -e ${home}/c ]; then
    sudo -u vagrant cp -p /vagrant/c ${home}/c
    chmod 755 ${home}/c
fi
