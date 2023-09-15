#!/bin/bash

log=/resources/logs/Java.log
errorLog=/resources/errors/Java.err
source checkExit.sh

getJava(){
  sudo apt install default-jdk default-jre 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}