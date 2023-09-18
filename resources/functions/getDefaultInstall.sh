#!/bin/bash

log=./resources/logs/Default.log
errorLog=./resources/errors/Default.err
source ./resources/functions/checkExit.sh
source ./resources/functions/getUpdate.sh
source ./resources/functions/getSnap.sh
source ./resources/functions/apps/getVim.sh
source ./resources/functions/tools/getCurl.sh
source ./resources/functions/tools/getGrub2.sh
source ./resources/functions/programmingLanguages/getPython3.sh
source ./resources/functions/programmingLanguages/getJava.sh
source ./resources/functions/programmingLanguages/getHaskell.sh
source ./resources/functions/programmingLanguages/getNode.sh
source ./resources/functions/apps/getDiscord.sh
source ./resources/functions/apps/getIntellij.sh
source ./resources/functions/tools/getDocker.sh
source ./resources/functions/apps/getDeja.sh
source ./resources/functions/apps/getGimp.sh

# Define an array of function names
functions=(
            "getUpdate"
            "getSnap"
            "getVim"
            "getCurl"
            "getGrub"
            "getPython"
            "getJava"
            "getHaskell"
            "getNode"
            "getIntellij"
            "getDocker"
            "getDiscord"
            "getDeja"
            "getGimp"
             )

# Function to execute all functions in the array
executeFunctions() {
  for func in "${functions[@]}"; do
    "$func" 1>>"$log" 2>>"$errorLog"
    checkExitStatus "$errorLog"
  done
}

# Default install aka Tamayo's install or myInstall (this would install everything)
getDefaultInstall() {
  executeFunctions
  echo "Remember to reboot to check everything is working right."
}