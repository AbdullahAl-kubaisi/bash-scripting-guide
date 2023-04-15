#!/bin/bash
# Zahl raten: Das Skript wählt eine Zufallszahl zwischen 1 und 20, und der Benutzer muss sie erraten.
# Zahlenraten 
# autor: Abdullah Al-Kubaisi
# date: 14.03.2023
# Überprüfen, ob figlet installiert ist
if ! command -v figlet &> /dev/null
then
    echo "Zahl raten"
else
    figlet "Zahl raten"
fi

# Funktion, um eine Zufallszahl zwischen 1 und 20 zu generieren
function generate_number {
    echo $((1 + RANDOM % 20))
}

# Anzahl der Rateversuche auf 0 setzen
tries=0

# Spiel starten
play_again="y"
while [[ $play_again == "y" ]]; do
    # Zufallszahl generieren
    number_to_guess=$(generate_number)

    # Benutzer auffordern, eine Vermutung abzugeben
    echo "Ich habe eine Zahl zwischen 1 und 20 gewählt. Versuche, sie zu erraten!"
    read guess

    # Überprüfen, ob die Eingabe des Benutzers eine Zahl ist
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Fehler: Bitte geben Sie eine Zahl ein!"
        continue
    fi

    # Rateversuch erhöhen
    tries=$((tries+1))

    # Überprüfen, ob die Vermutung korrekt ist
    if [[ $guess -eq $number_to_guess ]]
    then
        echo "Herzlichen Glückwunsch! Sie haben die Zahl in $tries Versuchen erraten."
        read -p "Möchten Sie noch einmal spielen? (y/n)" play_again
        tries=0
    elif [[ $guess -lt $number_to_guess ]]
    then
        echo "Die Zahl, die ich mir ausgedacht habe, ist größer als $guess. Bitte geben Sie eine höhere Zahl ein."
    else
        echo "Die Zahl, die ich mir ausgedacht habe, ist kleiner als $guess. Bitte geben Sie eine kleinere Zahl ein."
    fi
done