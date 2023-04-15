#!/bin/bash
#author: abdullah Al-Kubaisi
#date: 11.04.2023
#
zaehleVonBis() {
  start=$1
  end=$2
  sum=0
  
  for (( i=$start; i<=$end; i++ ))
  do
    sum=$((sum + i))
  done
  
  echo $sum
}

# Beispielaufruf der Funktion mit Start- und Endzahl als Argumenten
zaehleVonBis 1 10

