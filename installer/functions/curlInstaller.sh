#!/bin/bash

log=/installer/logs/Snap.log
source checkExit.sh

getCurl(){
  sudo $ sudo apt install curl 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}