#!/bin/bash

log=resources/logs/Grub.log
errorLog=resources/errors/Grub.err
source ./checkExit.sh

getGrub(){
  sudo sudo apt-get install grub2 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}
