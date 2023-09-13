#!/bin/bash

errorLog=installer/errors/error.log

checkExitStatus(){
	 local cmd="$1"
      if [ $? -ne 0 ]
      then
          echo "An error occurred while running '$cmd', please check the $errorLog file."
      fi
}