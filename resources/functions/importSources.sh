#!/bin/bash

getSources(){
  srcFiles="installer/functions"
  for file in "$srcFiles"/*.sh;
   do
      if [ -f "$file" ] && [ -r "$file" ];
      then
          source $file
      fi
  done
}
