#!/bin/bash

log=./resources/logs/Discord.log
errorLog=./resources/errors/Discord.err
source ./resources/functions/checkExit.sh

getDiscord(){
  sudo sudo snap install discord 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
  echo "Discord was installed"
}
