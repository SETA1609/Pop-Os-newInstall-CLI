#!/bin/bash

information=( " "
              "1) Default installation: Installs a set of default applications and tools."
              "2) Custom installation: Allows you to choose specific applications and tools to install."
              "3) Information/instructions: Displays instructions for using the application."
              "4) Close Program: Exits the application."
              "5) Reboot pc: Restarts your computer."
              "Instructions for using the application:"
              " - Choose '1' for a default installation with predefined settings."
              " - Choose '2' for a custom installation to select specific applications and tools."
              " - Choose '3' to display these instructions again."
              " - Choose '4' to close the application."
              " - Choose '5' to reboot your computer."
              " ")

getInformation(){

  for info in "${information[@]}";
    do
       echo "$info"
    done

}