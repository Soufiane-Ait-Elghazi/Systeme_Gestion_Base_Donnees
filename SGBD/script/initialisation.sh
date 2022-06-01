#!/bin/bash
if [ -d "data" ];then
  echo -e "\033[35;1m----------------Bienvenue sur SGBD CI-GI----------------\033[0m";
  echo " ";
else
echo "Problème il manque le dossier data Création !";
mkdir data
fi
cd script
#------------------ Structure----------------------

touch structure.txt
cd ../data/
ls -1 | wc -l> ../script/structure.txt
ls >> ../script/structure.txt
ls -1 -d */* | wc -l>> ../script/structure.txt
ls -d */* >> ../script/structure.txt

#------------------ MetaData----------------------
cd ../script/
touch MetaData.txt
cd ../data/
ls -1 | wc -l> ../script/MetaData.txt
for d in */;do
	echo $d >> ../script/MetaData.txt
	for file in $d*;do
		echo $file >> ../script/MetaData.txt
		line=$(head -n 1 ${file})
		echo $line >> ../script/MetaData.txt
		done
done


