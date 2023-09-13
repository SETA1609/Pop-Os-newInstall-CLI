#!/bin/bash

log=/installer/logs/Java.log
source checkExit.sh

installJava(){
  sudo apt apt install default-jdk 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}