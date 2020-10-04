#!/bin/bash
# Styled texts
start=`date +%s`
bold=$(tput bold)
normal=$(tput sgr0)
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

startInstall() {
    echo
    echo "${bold}$1${normal}"
}

############# browser Tools #############
startInstall "############# Browser Tools #############"
echo -n "Do you wish to install Browsers (${bold}${green}y${reset}/${bold}${red}n${reset})? "
read Browser

CaskBrowserList=(
    google-chrome
    firefox
)
if [ "$Browser" != "${Browser#[Yy]}" ] ;then
    echo "Ok! Installing firefox and chrome"
    brew cask install --appdir="/Applications" ${CaskBrowserList[@]}
else
    echo "Ok! Skipping Browsers!"
fi

