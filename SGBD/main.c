#include <stdio.h>
#include <stdlib.h>
#include "fichier.h"
#include "initialisation.h"

/**
Notre fonction principale
**/
int main(int argc, char const *argv[]) {
  int valMenu = 0,etatFree, etatSelect = 0;
  BDD Base;
  intialisationData();

  do{
    affichageMenu();
    selectionMenu(&valMenu);
    executionSelect(valMenu, &Base,&etatSelect);

    if(valMenu == 1){
      etatFree = 1;
    }

  }while (valMenu != 4);

  if(etatFree == 1){
  
    free(Base.nomBDD);
    free(Base.cheminBDD);
    free(Base.cheminTable);
    free(Base.Table);
  }


  return 0;
}
