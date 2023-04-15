#!/bin/bash
# Author: Abdullah Al-Kubaisi
# datum: 30.03.2023
# Ausgabe des Inhalts der Dateien fox1.txt, fox2.txt, fox3.txt mittels cat
# Den Output über eine Pipe an sort weitergeben (ohne Optionen)
# Den neuen Output über eine Pipe an uniq ausgeben, um mehrfaches Vorkommen der gleichen Inhalte nur einmal auszugeben
# Das Resultat in die Datei final.txt schreiben
cat fox1.txt fox2.txt fox3.txt | sort | uniq > final.txt
