#!/bin/bash
#aquest script ha de finalitzar si qui l'executa no és 
#l'usuari root, pista la VARIABLE UID ens dona el nostre UID i 
#el UID de root és 0
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

echo "ets root"
exit 0