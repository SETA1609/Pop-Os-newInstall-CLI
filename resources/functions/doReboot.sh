#!/bin/bash

log=./resources/logs/reboot.log
errorLog=./resources/errors/reboot.err
source ./resources/functions/checkExit.sh

doReboot(){
  clear
  echo "Are you sure you want to reboot your pc? Y/N"
  echo " "
  read answer

  case $answer in
       		y) sudo systemctl reboot 1>>"$log" 2>>"$errorLog";;
       		n) clear; return ;;
       		*) clear; echo "Invalid input"; echo "Please enter y or n. "; doReboot;;
       esac


}