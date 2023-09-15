#!/bin/bash

log=/resources/logs/Default.log
errorLog=/resources/errors/Default.err
source /resources/functions/importSources.sh
getSources

# Define an array of function names
functions=("getUpdate" "getSnap" "getVim" "getCurl" "getGrub" "getPython" "getJava" "getHaskell" "getNode" "getIntellij" "getDocker" "getDiscord" "getDeja" )

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
}