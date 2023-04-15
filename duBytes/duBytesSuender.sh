#!/bin/bash
# author: Abdullah Al-Kubaisi
# date: 23.03.2023
# Summe der Groesse aller Dateien in Bytes
total_size=$(find C:/Schule/Module/M_122/duBytes -type f -exec du -b {} + | awk '{sum+=$1}END{print sum}')

echo "Summe der Grosse aller Dateien: $total_size Bytes"

# Die drei groessten Dateien
find C:/Schule/Module/M_122/duBytes -type f -exec du -b {} + | sort -rn | head -n 3 | awk '{printf "%s %s\n", $1, $2}' | cut -d "." -f 1

