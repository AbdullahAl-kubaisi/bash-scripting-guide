#!/bin/bash
# author: abdullah Al-Kubaisi
# date: 06.04.23
# convertData03_alleOhne26.sh
# Alle Zeilen mit einer "26" rausfiltern

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



# Filtern der deutschsprachigen Texte und Ausgabe in die Ausgabedatei, dann Filtern der Zeilen, die nicht mit "2", einem Tabulator und "26" beginnen
grep '^2[^\t]*' "$1"| grep -v '^2[^\t]*\t26' > "$2"

# Erfolgsmeldung anzeigen
echo "Erfolg: Deutschsprachige Texte ohne Zeilen, die mit '2', einem Tabulator und '26' beginnen, wurden in die Datei '$2' geschrieben."

