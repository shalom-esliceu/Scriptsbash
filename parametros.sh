#!/bin/bash
#aquest script ha de tenir dos parametres
if [[ ${#} -ne 2 ]]
then
    echo "numero de parametres ${#}"
    echo "has d'introduir dos parametres"
    exit 1
fi
NOM_SCRIPT=${0}
echo "has executat el script ${NOM_SCRIPT}"
USERNAME=${1}
echo "el teu username es ${USERNAME}"

PASSWORD=${2}
echo "EL TEU PASSWORD ES ${PASSWORD}"
exit 0