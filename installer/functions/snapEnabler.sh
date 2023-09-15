#!/bin/bash

log=/installer/logs/Snap.log
source checkExit.sh

enableSnap(){
  sudo apt install snapd 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}