#!/bin/bash

log=/installer/logs/Vim.log
errorLog=/installer/errors/Vim.err

source checkExit.sh

getNode(){
  sudo apt install vim 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog
}