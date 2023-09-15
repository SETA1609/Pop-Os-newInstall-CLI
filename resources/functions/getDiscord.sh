#!/bin/bash

log=/resources/logs/Discord.log
errorLog=/resources/errors/Discord.err
source checkExit.sh

getDiscord(){
  sudo sudo snap install discord 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}
