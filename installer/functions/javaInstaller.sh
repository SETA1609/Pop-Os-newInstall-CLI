#!/bin/bash

log=/installer/logs/Java.log
source checkExit.sh

installJava(){
  sudo apt install default-jdk default-jre 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}