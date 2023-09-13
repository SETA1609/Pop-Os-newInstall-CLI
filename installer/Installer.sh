#!/bin/bash

isRunning=true
source installer/functions/importSources.sh
importSources


while [ "$isRunning" ]; do
    echo probe
done
