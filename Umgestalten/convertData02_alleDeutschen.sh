#!/bin/bash

# script name: filter-out-german-text.sh
# author: Abdullah Al-Kubaisi
# date: 04.04.2023#
if [ -z "$1" ] || [ -z "$2" ]; then
 echo "This script filters out the main german work names from a special list " 
 echo "You must specify the name of the inout and output file when calling the program" 
 echo "Example: ./verify-input-and-output.sh Export.spl ArbeitslisteOutput.txt" 
 exit 1
 fi
 grep '^2[^\t]*' "$1" > "$2"