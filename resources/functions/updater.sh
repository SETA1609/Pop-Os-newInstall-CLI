#!/bin/bash

releaseFile=/etc/os-release
log=/resources/logs/updater.log
errorLog=/resources/logs/updater.err

source checkExit.sh

getUpdate(){
  if grep -q "Arch" $releaseFile
  then
  	#if arch
  	sudo pacman -Syu 1>>"$log" 2>>"$errorLog"
  	checkExitStatus $errorLog
  fi

  if grep -q "Pop" $releaseFile ||  grep -q "Ubuntu" $releaseFile
  then
  #if Ubuntu or pop
  	sudo apt update	 1>>"$log" 2>>"$errorLog"
  	checkExitStatus $errorLog
    sudo apt dist-upgrade 1>>"$log" 2>>"$errorLog"
  	checkExitStatus $errorLog
  fi

  if grep -q "Debian" $releaseFile
  # if Debian
  then
  	sudo apt update	 1>>"$log" 2>>"$errorLog"
    checkExitStatus $errorLog
    sudo apt upgrade 1>>"$log" 2>>"$errorLog"
    checkExitStatus $errorLog
  fi
}

