#!/bin/bash
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

#TRES PARÀMETRES OBLIGATORIS
if [[ ${#} -ne 3 ]]
then
    echo "has d'introduir 3 paràmetres"
    exit 1
fi
#DEMANAM EL NOM COMPLET
FULL_NAME=${1}
#DEMANAM L'USERNAME
USERNAME=${2}
#DEMANAM EL PASSWORD
PASSORD=${3}
#CREAM L'USUARI
useradd -c "${FULL_NAME}" -m ${USERNAME} > /dev/null
#SI LA COMANDA HA FALLAT
if [[ ${?} -ne 0 ]]
then
    echo "errada creant l'usuari"
    exit 1
fi

#APLICAR LA CONTRASENYA
echo "${USERNAME}:${PASSWORD}" | chpasswd
#comprovar que el canvi de password ha estat correcte
if [[ $[?] -ne 0 ]]
then
    echo "errada canviant de contrasenya"
    exit 1
fi

echo "Usuari ${USERNAME} creat correctament"
exit