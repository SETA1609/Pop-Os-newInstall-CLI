#!/bin/bash

log=/installer/logs/Java.log
source checkExit.sh

installJava(){
  sudo apt install haskell-platform 1>>"$log" 2>>"$errorLog"
  checkExitStatus
  sudo apt-get install ghc 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}