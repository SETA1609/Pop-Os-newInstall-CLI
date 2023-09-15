#!/bin/bash

log=/resources/logs/Python.log
errorLog=/resources/errors/Python.err

source checkExit.sh

getPython(){
  sudo apt install python3 python3-pip build-essential python3-dev 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}
