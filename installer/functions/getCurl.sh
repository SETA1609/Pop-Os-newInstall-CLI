#!/bin/bash

log=/installer/logs/Curl.log
source checkExit.sh

getCurl(){
  sudo $ sudo apt install curl 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}