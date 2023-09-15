#!/bin/bash

log=/installer/logs/Snap.log
source checkExit.sh

getSnap(){
  sudo apt install snapd 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}