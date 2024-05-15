#!/bin/bash
read -p "Introduce un número " NUMERO
if [[ ${NUMERO} -eq 5 ]]
then
    echo "Has introducido el número 5"
elif [[ ${NUMERO} -lt 5 ]]
then
    echo "Has introducido un número menor que 5"
elif [[ ${NUMERO} -gt 5 ]]
then
    echo "Has introducido un número mayor que 5"
fi