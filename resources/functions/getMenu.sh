#!/bin/bash
source ./resources/functions/getDefaultInstall.sh
source ./resources/functions/getCustomInstall.sh
source ./resources/functions/getInfo.sh
source ./resources/functions/doReboot.sh

isRunning=true

closeCli(){
  clear
  isRunning=false
  echo "Thank you for using Tamayo's newInstall cli. Remember to check the logs and errors in the resources directory."
}

options=("-----Welcome to newInstall tool-----" "Select one of the following options:" "1) Default installation" "2) Custom installation" "3) Information/instructions" "4) Close Program" "5) Reboot pc" "  ")

getMenu(){
for option in "${options[@]}"
  do
     echo "$option"
  done
}

startTool(){
  while [ "$isRunning" != "false"  ]; do
      getMenu
      read input
      case $input in
      		1) clear; getDefaultInstall;;
      		2) clear; getCustomInstall;;
          3) clear; getInformation;;
          4) closeCli ;;
          5) clear; doReboot;;
      		*) clear; echo "Invalid input"; getInformation;;
      esac
  done
}

