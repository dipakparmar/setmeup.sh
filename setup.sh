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

############# Database Tools #############
startInstall "############# Database Tools #############"
echo "Do you wish to install Database Tools (${bold}${green}y${reset}/${bold}${red}n${reset})? "
read Database


CaskDatabaseToolList=(
    graphiql
    pgadmin4

)
if [ "$Database" != "${Database#[Yy]}" ] ;then
    echo "Ok!"
    echo "Installing ..." ${CaskDatabaseToolList[@]}
    brew cask install ${CaskDatabaseToolList[@]}

else
    echo No
fi

############# Designer Tools #############
beginDeploy "############# Designer Tools #############"
echo -n "Do you wish to install Designer Tools (${bold}${green}y${reset}/${bold}${red}n${reset})? "
read Designer

CaskDesignerToolList=(
    adobe-creative-cloud
)
if [ "$Designer" != "${Designer#[Yy]}" ] ;then
    echo "Ok!"
    echo "Installing ..." ${CaskDesignerToolList[@]}
    brew cask install --appdir="/Applications" ${CaskDesignerToolList[@]}
else
############# Mobile Developer #############
beginDeploy "############# Mobile Developer #############"
echo -n "Do you wish to install Mobile Developer Tools (${bold}${green}y${reset}/${bold}${red}n${reset})? "
read MobileDeveloper

CaskMobileDeveloperToolList=(
    fastlane
)
if [ "$MobileDeveloper" != "${MobileDeveloper#[Yy]}" ] ;then
    echo "Ok!"
    echo "Installing ..."
    brew cask install ${CaskMobileDeveloperToolList[@]}
else
    echo "Ok! Skipping "
fi


############# IDEs #############
beginDeploy "############# IDEs #############"
echo -n "Do you wish to install IDEs (${bold}${green}y${reset}/${bold}${red}n${reset})? "
read IDEs

CaskIDEsList=(
    visual-studio-code
    android-studio
)
if [ "$IDEs" != "${IDEs#[Yy]}" ] ;then
    echo "Ok!"
    echo "Installing ..."
    brew cask install --appdir="/Applications" ${CaskIDEsList[@]}
    cat myvscode-extensions.txt | xargs -L1 code --install-extension
else
    echo "Ok! Skipping "
fi