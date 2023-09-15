#!/bin/bash

log=resources/logs/Nvidea.log
errorLog=resources/errors/Nvidea.err

source ./checkExit.sh
# in case that syslog goes crazy in ubuntu/pop os  bug with nvidea
patchNvidea(){
  sudo apt purge ~nnvidea 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo apt clean 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo apt update 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo apt install system76-driver-nvidia 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

  sudo systemctl reboot 1>>"$log" 2>>"$errorLog"
  checkExitStatus $errorLog

}