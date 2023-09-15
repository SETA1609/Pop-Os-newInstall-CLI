#!/bin/bash

log=resources/logs/Deja.log
errorLog=resources/errors/Deja.err
source ./resources/functions/checkExit.sh

getDeja(){
  sudo flatpak install flathub org.gnome.DejaDup 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}


