#!/bin/bash

isRunning=true
source installer/functions/importSources.sh
getSources

closeCli(){
  isRunning=false
}

while [ "$isRunning" ]; do
    getMenu

done
