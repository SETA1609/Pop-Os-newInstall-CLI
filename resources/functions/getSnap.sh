#!/bin/bash

log=./resources/logs/Snap.log
errorLog=./resources/errors/Snap.err


source ./resources/functions/checkExit.sh

getSnap(){
  sudo apt install snapd 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}