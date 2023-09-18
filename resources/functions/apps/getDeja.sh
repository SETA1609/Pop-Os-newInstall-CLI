#!/bin/bash

log=./resources/logs/Deja.log
errorLog=./resources/errors/Deja.err
source ./resources/functions/checkExit.sh

getDeja(){
  sudo snap install deja-dup --classic 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
  echo "Deja was installed"
}


