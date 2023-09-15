#!/bin/bash

log=resources/logs/Haskell.log
errorLog=resources/errors/Haskell.err
source ./checkExit.sh

getHaskell(){
  sudo apt install haskell-platform 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
  sudo apt-get install ghc 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}
