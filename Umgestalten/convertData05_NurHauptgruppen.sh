#!/bin/bash
# author: abdullah Al-Kubaisi
# date: 06.04.23
# convertData05_NurHauptgruppen.sh
# Nur Hauptgruppen anzeigen

# Überprüfen, ob zwei Parameter übergeben wurden
if [ "$#" -ne 2 ]; then
    echo "Fehler: Es müssen genau zwei Parameter übergeben werden."
    echo "Usage: ./convertData03_alleOhne26.sh [input] [output]"
    exit 1
fi

# Überprüfen, ob die Parameter nicht leer sind
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Fehler: Keiner der Parameter darf leer sein."
    exit 1
fi

# Überprüfen, ob die Eingabedatei existiert
if [ ! -f "$1" ]; then
    echo "Fehler: Die Eingabedatei '$1' existiert nicht."
    exit 1
fi



# Filtern der Zeilen, die nicht mit "2", einem Tabulator und "26" beginnen, Entfernen der ersten zwei Spalten und Behalten der Hauptgruppen

grep '^2[^\t]*' "$1" | grep -v '^2[^\t]*\t26'| cut -f 3- | grep -v '[A-Z][0-9]\{7\}' > "$2"

# Erfolgsmeldung anzeigen
echo "Erfolg: Nur Hauptgruppen wurden in die Datei '$2' geschrieben."



