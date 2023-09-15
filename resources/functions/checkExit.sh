#!/bin/bash


checkExitStatus(){
	 local errorLog="$1"
      if [ $? -ne 0 ]
      then
          echo "An error occurred while running , please check the $errorLog file."
      fi
}