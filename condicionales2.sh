#!/bin/bash
read -p "introdueix un número " NUMERO
if [[ ${NUMERO} -eq 5 ]]
then
    #l'usuari ha introduit un número igual
    echo "has introduit el número 5"
elif [[ ${NUMERO} -lt 5 ]]
then
    #l'usuari ha introduit un número menor
    echo "has introduït un número menor que 5"
elif [[ ${NUMERO} -gt 5 ]]
then
    #l'usuari ha introduit un número major
    echo "has intoduït un número major que 5"
fi