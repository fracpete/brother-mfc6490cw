#!/bin/bash

function checks {
  command -v updpkgsums >/dev/null 2>&1 || { echo >&2 "updpkgsums not present"; exit 1; }
  command -v makepkg >/dev/null 2>&1 || { echo >&2 "makepkg not present"; exit 1; }
}

function build {
  cd $DIR
  updpkgsums PKGBUILD
  makepkg -cf
  cd ..
}

checks

DIR=cupswrapper-driver
build

DIR=lpr-driver
build

DIR=scan-key-tool
build

DIR=scanner-driver
build

