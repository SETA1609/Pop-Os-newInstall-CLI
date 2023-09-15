#!/bin/bash

log=resources/logs/Node.log
errorLog=resources/errors/Node.err

source ./resources/functions/checkExit.sh

getNode(){
  sudo snap install node --classic 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}