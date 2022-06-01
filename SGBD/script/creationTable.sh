#!/bin/bash
cd data
echo -e "--------- \033[33mles bases de donnees existes\033[0m ---------"
ls
echo -e "--------- \033[33m----------------------------\033[0m ---------"
echo "---------  Ajouter des tables  ----------- "
echo "donner le nom de la Base De Donnees :"
read nom
if [ -d $nom ];then
  cd $nom
  echo "Combien de tables vous voulez ajouter :"
  read nb
  for ((i=0 ; $i<$nb ; i++))
  do
  	let y=i+1
    echo "Nom de table $y:"
    read nomTable
    touch $nomTable.txt
    echo "nombre d'élements dans la table $y :"
    read nbelem

		for ((h=0 ; $h<$nbelem ; h++))
		do
		let z=h+1
		echo "Type de l'élement $z :"
    		echo "#-----------------------------------------#"
		echo -e "#----------\033[31m1\033[0m---\033[33mINT\033[0m"
		echo -e "#----------\033[31m2\033[0m---\033[33mCHAR\033[0m"
		echo -e "#----------\033[31m3\033[0m---\033[33mFLOAT\033[0m"
		echo -e "#----------\033[31m4\033[0m---\033[33mPRIMARY KEY\033[0m"
		echo "#-----------------------------------------#"
		read typeelem
		while [ $typeelem -eq 0 -o  $typeelem -gt 4 ] 
			do	
		echo "Ce type n'éxiste pas";
		echo "Type de l'élement $z :"
        	echo "#-----------------------------------------#"
    		echo -e "#----------\033[31m1\033[0m---\033[33mINT\033[0m"
    		echo -e "#----------\033[31m2\033[0m---\033[33mCHAR\033[0m"
    		echo -e "#----------\033[31m3\033[0m---\033[33mFLOAT\033[0m"
    		echo -e "#----------\033[31m4\033[0m---\033[33mPRIMARY KEY\033[0m"
    		echo "#-----------------------------------------#"
    		read typeelem
    			done
				echo -n "$typeelem.">> $nomTable.txt
				echo "Nom de l'élement $z :"
				read nomelem
				echo -n "$nomelem|">> $nomTable.txt
		done

  done
  echo "bien ajouter "
else
  echo "Base De Donnees N'EXISTE PAS !"
  
 cd ..
ls -1 | wc -l> ../script/structure.txt
ls >> ../script/structure.txt
ls -1 -d */* | wc -l>> ../script/structure.txt
ls -d */* >> ../script/structure.txt
read -p "Appuyer sur une touche pour continuer ..."
  
  
  

fi

