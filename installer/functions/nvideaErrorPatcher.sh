#!/bin/bash

log=/installer/logs/Nvidea.log
errorLog=/installer/errors/Nvidea.err

source checkExit.sh

patchNvidea(){
  sudo apt install vim 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}