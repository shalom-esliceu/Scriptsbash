#!/bin/bash

#entrar com a root
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

#PODEM TENIR UN O DOS PARÀMETRES
if [[ ${#} -ne 1 ]]
then
    echo "falta un paràmetre USER_NAME"
    exit 1
fi

#SI TENIM DOS PARÀMTERES EL PRIMER IDICARÀ Y o N 
#INDICANT QUE VOLEM BORRAR EL HOME O NO Y EL SEGON SERÀ
#L'USER_NAME QUE VOLEM ESBORRAR

#SI TENIM UN PARÀMETRE VOLDRÀ INDICAR EL USER_NAME Y NO 
#BORRAREM EL HOME



#recollir l'usuari a esborrar I el posam dins la variable USER_NAME
USER_NAME=${1}

#ESBORRAM USUARI AMB EL SEU HOME
userdel -r ${USER_NAME}
