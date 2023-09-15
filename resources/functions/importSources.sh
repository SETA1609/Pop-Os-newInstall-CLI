#!/bin/bash

getSources(){
  srcFiles="./resources/functions"
  for file in "$srcFiles"/*.sh; do

      source "$file"

  done
}

