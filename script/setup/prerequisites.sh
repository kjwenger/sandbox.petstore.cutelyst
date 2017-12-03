#!/usr/bin/env bash

sudo apt update

# Version control tools
sudo apt install git -y
sudo apt install subversion -y

# Development tools
sudo apt install build-essential -y
sudo apt install cmake -y
sudo apt install g++ -y
sudo apt install qt5-default -y
sudo apt install qt5-doc -y
sudo apt install qt5-doc-html -y
sudo apt install qtbase5-dev -y
sudo apt install qtbase5-doc-html -y
sudo apt install qtbase5-examples -y
sudo apt install qtcreator -y

# Thirdparty dependencies
sudo apt install uwsgi -y
sudo apt build-dep uwsgi -y
sudo apt install clearsilver-dev -y
sudo apt install uuid-dev -y
sudo apt install libcap-dev -y
sudo apt install libzmq-dev -y
sudo apt install libgrantlee-dev -y
