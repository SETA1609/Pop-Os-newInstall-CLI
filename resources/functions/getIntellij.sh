#!/bin/bash

log=resources/logs/Intellij.log
errorLog=resources/errors/Intellij.err
source ./checkExit.sh

getNode(){
  sudo snap install intellij-idea-ultimate --classic 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}