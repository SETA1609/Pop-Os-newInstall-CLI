#!/bin/bash

log=./resources/logs/Java.log
errorLog=./resources/errors/Java.err
source ./resources/functions/checkExit.sh

getJava(){
  sudo apt install default-jdk default-jre 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
    echo "Java was installed"

}