#!/bin/bash

log=/installer/logs/Python.log
errorLog=/installer/errors/Python.err

source checkExit.sh

getPython(){
  sudo apt install python3 python3-pip build-essential python3-dev 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}
