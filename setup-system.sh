#!/usr/bin/env bash
# databank-bin-scripts/setup-system.sh

#This is to set up things like yum packages needed and so forth, so will
#need to be run with sudo

#Change this if you want to run interactively
YUMOPTS="--assumeyes"
#YUMOPTS=""

#install necessary os packages

#assumes git is already installed, and that is how these files got onto the server

#General
YUM_PACKAGES="emacs-nox gcc nodejs"
#ruby
YUM_PACKAGES="$YUM_PACKAGES bzip2 openssl-devel readline-devel ruby-devel"
#ruby-build
YUM_PACKAGES="$YUM_PACKAGES libyaml-devel libffi-devel zlib-devel gdbm-devel ncurses-devel"
#needed for rails app
YUM_PACKAGES="$YUM_PACKAGES libcurl-devel postgresql-devel gcc-c++ file-devel sqlite-devel"
yum $YUMOPTS install $YUM_PACKAGES

#I didn't get the necessary g++ until I installed this
yum $YUMOPTS groupinstall 'Development Tools'

#install yarn globally
npm install -g yarn

# copy ./etc/init.d/ideals to /etc/init.d/ideals
yes | cp etc/init.d/ideals /etc/init.d/
chown root /etc/init.d/ideals
chgrp root /etc/init.d/ideals
chmod 755 /etc/init.d/ideals
