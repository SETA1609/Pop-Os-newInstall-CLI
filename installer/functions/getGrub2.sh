#!/bin/bash

log=/installer/logs/Grub.log
errorLog=/installer/errors/Grub.err
source checkExit.sh

getGRUB(){
  sudo sudo apt-get install grub2 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}
