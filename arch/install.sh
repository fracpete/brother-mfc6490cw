#!/bin/bash

function install {
  cd $DIR
  sudo pacman -U brother*.tar.xz
  cd ..
}

DIR=cupswrapper-driver
install

DIR=lpr-driver
install

DIR=scan-key-tool
install

DIR=scanner-driver
install

