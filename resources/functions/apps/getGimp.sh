#!/bin/bash

log=./resources/logs/Gimp.log
errorLog=./resources/errors/Gimp.err
source ./resources/functions/checkExit.sh

getGimp(){
 sudo apt install gimp 1>>"$log" 2>>"$errorLog"
 checkExitStatus $errorLog
  echo "Gimp was installed"

}