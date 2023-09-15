#!/bin/bash

log=/installer/logs/Snap.log
source checkExit.sh

getNode(){
  sudo apt install vim 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}