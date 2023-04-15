#!/bin/bash
# author: Abdullah Al-Kubaisi
# date: 03.04.23
# Überprüfen, ob ein Parameter übergeben wurde
if [ "$#" -ne 1 ]; then
  echo "Bitte geben Sie genau einen Befehl als Parameter an."
  exit 1
fi

command="$1"

# Die erste Zeile der --help-Ausgabe anzeigen
"$command" --help | head -n 1

