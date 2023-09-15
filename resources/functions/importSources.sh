#!/bin/bash

getSources(){
  srcFiles="."
  for file in "$srcFiles"/*.sh; do

      source "$file"

  done
}

