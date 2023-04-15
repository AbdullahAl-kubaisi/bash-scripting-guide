#!/bin/bash
#
# autor: Abdullah Al-Kubaisi
# date: 08.03.2023
#
# Zufallszahl generieren
number=$((RANDOM % 20 + 1))

# Variablen initialisieren
guess=0
tries=0
maxtries=5

# Schleife zur Eingabe der Rateversuche
until [ $guess -eq $number ]; do
    # Rateversuche erhöhen
    ((tries++))

    # Prüfen, ob die maximale Anzahl an Versuchen erreicht wurde
    if [ $tries -gt $maxtries ]; then
        echo "Sie haben die maximale Anzahl an Versuchen überschritten. Die Zahl war $number."
        exit 1
    fi

    # Eingabeaufforderung
    read -p "Errate eine Zahl zwischen 1 und 20: " guess

    # Prüfen, ob die Eingabe eine Zahl ist
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Fehler: Sie müssen eine Zahl eingeben."
        continue
    fi

    # Prüfen, ob die Eingabe richtig ist
    if [ $guess -eq $number ]; then
        echo "Glückwunsch! Sie haben die Zahl in $tries Versuchen erraten."
    elif [ $guess -lt $number ]; then
        echo "Die Zahl ist größer als $guess."
    else
        echo "Die Zahl ist kleiner als $guess."
    fi
done

