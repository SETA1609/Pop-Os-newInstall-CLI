#!/bin/bash
source /resources/functions/importSources.sh
getSources

isRunning=true

closeCli(){
  echo "Thank you for using Tamayo's newInstall cli remember to check the logs and errors in the resources directory"
  isRunning=false
}

options=("-----Welcome to newInstall tool-----" "Select one of the following options:" "1) Default installation" "2) Custom installation" "3) Information/instructions" "4) Close Program")

getMenu(){
for option in "${options[@]}"; do
    " echo $option"
  done
}

startTool(){
  while [ "$isRunning" ]; do
      getMenu
      read input
      case $input in
      		1) getDefaultInstall;;
      		2) getCustomInstall;;
          3) getInformation;;
          4) closeCli;;
      		*) echo "Invalid input";;
      esac
  done
}

