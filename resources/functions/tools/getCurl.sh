#!/bin/bash

log=./resources/logs/Curl.log
errorLog=./resources/errors/Curl.err
source ./resources/functions/checkExit.sh


getCurl(){
  sudo $ sudo apt install curl 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
    echo "Curl was installed"

}