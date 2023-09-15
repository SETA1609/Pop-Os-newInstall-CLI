#!/bin/bash

log=/installer/logs/Node.log
errorLog=/installer/errors/Node.err

source checkExit.sh

getNode(){
  sudo snap install node --classic 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}