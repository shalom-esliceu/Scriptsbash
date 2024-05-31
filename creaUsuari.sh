#!/bin/bash
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

#DOS PARÀMETRES OBLIGATORIS
if [[ ${#} -ne 2 ]]
then
    echo "has d'introduir 2 paràmetres"
    exit 1
fi
#DEMANAM EL NOM COMPLE
FULL_NAME=${1}
#DEMANAM L'USERNAME
USERNAME=${2}
#GENERAR UN PASSWORD EL PASSWORD
PASSWORD=$(date +%s%N | sha256sum | head -c 8)
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
if [[ ${?} -ne 0 ]]
then
    echo "errada canviant la contrasenya"
    exit 1
fi

echo "Usuari ${USERNAME} PASSWORD: ${PASSWORD}"
exit 0