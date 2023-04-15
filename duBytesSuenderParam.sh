#!/bin/bash
# author: Abdullah Al-Kubaisi
# date: 23.03.2023

# Überprüfen, ob ein Verzeichnis als Parameter übergeben wurde
if [ -z "$1" ]
then
  echo "Dieses Skript listet ab einem Verzeichnis rekursiv die Summe des Speicherbedarfs auf."
  echo "Bitte geben Sie den Pfad zum Verzeichnis als Parameter ein, z.B.:"
  echo "./duBytesSuenderParam.sh /home/benutzer/verzeichnis"
  exit 1
fi

# Summe der Größe aller Dateien in Bytes
total_size=$(find "$1" -type f -exec du -b {} + | awk '{sum+=$1}END{print sum}')

echo "Summe der Größe aller Dateien: $total_size Bytes"

# Die drei größten Dateien
find "$1" -type f -exec du -b {} + | sort -rn | head -n 3 | awk '{printf "%s %s\n", $1, $2}' | cut -d "." -f 1
