#!/bin/bash

log=/installer/logs/Haskell.log
source checkExit.sh

getHaskell(){
  sudo apt install haskell-platform 1>>"$log" 2>>"$errorLog"
  checkExitStatus
  sudo apt-get install ghc 1>>"$log" 2>>"$errorLog"
  checkExitStatus
}
