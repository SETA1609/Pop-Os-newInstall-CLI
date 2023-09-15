#!/bin/bash

log=/installer/logs/Docker.log
errorLog=/installer/errors/Docker.err

source checkExit.sh

getDocker(){
  sudo apt-get remove docker docker-engine docker.io containerd runc 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
  sudo apt-get update 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
    | sudo apt-key add - \
    && sudo apt-key fingerprint 0EBFCD88 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable" 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}