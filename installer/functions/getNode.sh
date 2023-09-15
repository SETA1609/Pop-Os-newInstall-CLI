#!/bin/bash

log=/installer/logs/Node.log
source checkExit.sh

getNode(){
  sudo snap install node --classic 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}