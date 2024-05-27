#!/bin/bash
if [[ ${UID} -ne 0 ]]
then
    echo "No ets root"
    exit 1
fi

#DOS PARÀMETRES OBLIGATORIS
if [ ${#} -ne 1 ]; then
    echo "Tienes que introducir tres parámetros"
    exit 1
fi

#DEMANAM EL NOM COMPLET
FULL_NAME=${1}
#DEMANAM L'USERNAME
USERNAME=${2}
#GENERAR UN PASSWORD EL PASSWORD
PASSWORD=$(date +%s%N)
#CREAM L'USUARI
usseradd -c "${FULL_NAME}" -m ${USERNAME}

#SI LA COMANDA HA FALLAT SURT
if [[ ${?} ]]
then
    echo "Errada creant l'usuari"
    exit 1
fi

#APLICAR LA CONTRASENYA
echo "${USERNAME}:${PASSWORD}" | chpasswd
#COMPROVAR QUE EL CANVI DE PASSWORD HA ESTAT CORRECTE
if [[ ${?} -ne 0 ]]
then
    echo "Error al canviar la contraseña"
    exit 1
fi
echo "Usuari ${USERNAME} PASSWORD: ${PASSWORD}"

exit 0