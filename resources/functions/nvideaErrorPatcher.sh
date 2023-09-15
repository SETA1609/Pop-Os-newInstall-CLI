#!/bin/bash

log=/resources/logs/Nvidea.log
errorLog=/resources/errors/Nvidea.err

source checkExit.sh

patchNvidea(){
  sudo apt install vim 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}