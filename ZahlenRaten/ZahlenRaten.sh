#!/bin/bash
#
# Zahlenraten zwischen 0 und 100
# autor: Abdullah Al-Kubaisi
# date: 09.03.2023
#
# Definieren von Farbvariablen zur Verwendung im Terminal-Output
green='\e[92m'
white='\e[0m'
red='\e[31m'

# Definieren von Variablen für die Formatierung des Texts
bold=$(tput bold)
regular=$(tput sgr0)

#Initialisierung der playagain-Variable
playagain="y"

# Funktion, um den Titel des Spiels auszugeben
function title() {
# Prüfen, ob das Programm "figlet" installiert ist    
  if [ $(command -v figlet) ]; then
  # Wenn ja, gib den Titel in einer speziellen Schriftart aus
    echo -e "\n"
    figlet "Guess the number"
    echo -e "\n"
  else
  # Wenn nicht, gib den Titel in einer einfachen Schriftart aus
    echo -e "\n###########################"
    echo -e "###   Guess the number  ###"
    echo -e "###########################\n"
  fi
}
# Funktion, um zu überprüfen, ob die Benutzereingabe eine Zahl ist
function validateGuess() {
  if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo -e "${red}not a number${white}";exit 1
  fi
}

function main() {
  # Zähler für die Anzahl der Versuche
  counter=0
  # Zufällige Zahl zwischen 1 und 20 generieren
  rndnum=$((1+$RANDOM % 20))

  echo -ne "Your guess: "
  read guess
  
  #Prüfen, ob die Eingabe eine Zahl ist
  validateGuess $guess
  # Solange die geratene Zahl nicht der zufälligen Zahl entspricht
  until [ "$rndnum" -eq "$guess" ]; do
  # Wenn die geratene Zahl zu niedrig ist
    if [ "$rndnum" -gt "$guess" ]; then
    # Gib eine entsprechende Meldung aus unf frage nach einer neuen Zahl
      echo -ne "${red}${bold}Too low. New guess: ${regular}${white}"
      read guess
      validateGuess $guess
    else
    # Wenn die geratene Zahl zu hoch ist, gib eine entsprchende Meldung aus und frage nach einer neuen Zahl
      echo -ne "${red}${bold}Too high. New guess: ${regular}${white}"
      read guess
      validateGuess $guess
    fi
    # Zähler fpr die Anzahl der Versuche erhöhen
    counter=$((counter+1))
  done
  # Wenn die Zahl richtig geraten wurde
  echo -ne "${green}${bold}You got it! Type "y" to play again ${regular}${white}\nTook you $counter tries. "
  read playagain
  # Konvertiere die Eingabe in kleinbuchstaben
  playagain=$(echo "$playagain" | tr "[:upper:]" "[:lower:]")
}
# Solange der Spieler weiterspielen möchte
while [ "$playagain" = "y" ]; do
  title   
  main
done
# Die Konsole wird mit "clear" gelöscht
clear
# Das Skript wird mit exit code 0 beendet
exit 0


