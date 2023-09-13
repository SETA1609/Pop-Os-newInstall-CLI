#!/bin/bash

releaseFile=/etc/os-release
updaterLog=/installer/logs/updater.log
source checkExit.sh

getUpdate(){
  if grep -q "Arch" $releaseFile
  then
  	#if arch
  	sudo pacman -Syu 1>>"$updaterLog" 2>>"$errorlog"
  	checkExitStatus
  fi

  if grep -q "Pop" $releaseFile ||  grep -q "Ubuntu" $releaseFile
  then
  #if Ubuntu oder pop
  	sudo apt update	 1>>"$updaterLog" 2>>"$errorlog"
  	checkExitStatus
    sudo apt dist-upgrade 1>>"$updaterLog" 2>>"$errorlog"
  	checkExitStatus
  fi

  if grep -q "Debian" $releaseFile
  # if Debian
  then
  	sudo apt update	 1>>"$updaterLog" 2>>"$errorlog"
    checkExitStatus
    sudo apt upgrade 1>>"$updaterLog" 2>>"$errorlog"
    checkExitStatus
  fi
}

