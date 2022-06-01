#!/bin/bash
cd data
echo -e "\033[35;1m-------------La liste des Bases De Donnees:---------------\033[0m"
echo -e "\033[33m--------------------nombre de base :----------------------\033[0m"
ls -1 | wc -l
echo -e "\033[33m---------------noms des bases de donnees :----------------\033[0m"
ls -C
