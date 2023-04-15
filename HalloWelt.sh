#!/bin/bash 
# Die erste Zeile gibt an, welches Programm fuer die Ausfuehrung des Scripts verwendet werden soll.
# Hallo BBw: erstes Script
#
# author: Abdullah Al-Kubaisi
# date: 23.02.2023
#
# Die folgenden Zeilen geben Text auf der Konsole aus
echo -e "Hallo BBW"
echo -e "Hallo Pionierpark"

# Unterdruecke das Hinzufuegen einer neuen Zeile am Ende der Ausgabe
echo -n "Dies ist ein Test mit -n: "
echo -n "Abdullah Al-Kubaisi"
# Interpretiere Escape-Sequenzen wie \t (Tabulator)
echo -e "\nDies ist ein Test mit -e: "
echo -e "Abdullah\tAl-Kubaisi"
#  Deaktiviere das Interpretieren von Escape-Sequenzen (standardmaessig aktiviert)
echo -e "\nDies ist ein Test mit -E: "
echo -E "Abdullah\tAl-Kubaisi"
# Liest die Eingabe von der Pipeline statt der Tastatur
echo -e "\nDies ist ein Test mit -s: "
echo -e "Abdullah Al-Kubaisi" | echo -s "geheim"