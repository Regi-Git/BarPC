#!/bin/bash

## To run script, execute current commands in terminal when inside this folder:
## 1. $ sudo chmod +x ubuntu_install.sh
## 2. $ sudo bash ubuntu_install.sh

## Fetches updates
sudo apt update

## Upgrades packages
sudo apt upgrade -y

## Installs snap
sudo apt install snapd

## Installs spotify via snap
sudo snap install spotify --classic

## Installs QLC with the given package
sudo apt install ./QLC/qlcplus_4.12.4_amd64.deb -y

## Makes .qlcplus directory
sudo mkdir ~/../home/felix/.qlcplus

## Moves bar-dmx config files to documents
sudo mv ./QLC/bar-DMX ~/../home/felix/Documents/

## Moves custom fixture files to .qlcplus, which is where they are stored
sudo mv ./QLC/qlcplus/* ~/../home/felix/.qlcplus

## Moves custom desktop files to applications folder. Makes qlc show up when searching for it
sudo mv ./QLC/dotdesktop/* ~/../usr/share/applications

