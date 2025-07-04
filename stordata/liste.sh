#!/bin/bash
# tests si la liste de vm est présente et non vide
[ ! -f listvm ] && echo "\"listvm\" est manquant" && exit 1 #2>/dev/null
[ ! -s listvm ] && echo "\"listvm\" est vide" && exit 3 #2>/dev/null
# Construit la liste pour la variable {{ do }} ansible
m=$(cat listvm)
lm=$(echo $m | tr -s ' ' ':')
echo $lm
