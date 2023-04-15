#!/bin/bash
# author: Abdullah Al-Kubaisi
# datum: 30.03.2023
# Ausgabe des Inhalts der Datei testfile.txt mittels cat, Entfernen doppelter Zeilen mit uniq und Sortieren der Zeilen numerisch in umgekehrter Reihenfolge mit sort -n -r
cat testfile.txt | uniq | sort -n -r

