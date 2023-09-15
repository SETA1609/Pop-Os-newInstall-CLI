#!/bin/bash

log=resources/logs/Vim.log
errorLog=resources/errors/Vim.err

source ./resources/functions/checkExit.sh

getNode(){
  sudo apt install vim 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}