#!/bin/bash
# author: Abdullah Al-Kubaisi
# 06.04.2023
# Prüfen von Input und Output Parameter

# Überprüfen, ob zwei Parameter übergeben wurden
if [ "$#" -ne 2 ]; then
    echo "Fehler: Es müssen genau zwei Parameter übergeben werden."
    echo "Usage: ./convertData01_Parameter.sh [input] [output]"
    exit 1
fi

# Überprüfen, ob die Parameter nicht leer sind
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Fehler: Keiner der Parameter darf leer sein."
    exit 1
fi

# Wenn beide Parameter nicht leer sind, geben Sie eine Erfolgsmeldung aus
echo "Erfolg: Beide Parameter sind nicht leer."
echo "Input-Parameter: $1"
echo "Output-Parameter: $2"

 

