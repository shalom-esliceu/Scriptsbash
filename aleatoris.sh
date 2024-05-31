#!/bin/bash
#aquest script ha de tenir un paràmetre
#obligatori que serà la
#quantitat de números a genera
if [[ ${#} -ne 1  ]]
then
    echo "Has d'introduir un paràmetre"
    exit 1
fi

#hem de recollir el paràmetre i guardar-lo a la variable QUANTS
QUANTS=${1}

URL="https://www.random.org/integers/?num=${QUANTS}&min=1&max=100&col=1&base=10&format=plain&rnd=new"
echo ${URL}

#EXECUTAR URL I GUARDAM EL RESULTAT DONS LA VARIABLE NUMEROS
# NUMEROS=$(curl ${URL})
NUMEROS=$(curl ${URL})
echo "ELS NUMEROS GENERATS S SÓN ${NUMEROS}"
#ARA HEM DE RECORRE AQUEST NÚMEROS PER CALCULAR LA SUMA
SUMA=0
for N in ${NUMEROS}
do
    SUMA=$((SUMA+${N}))
done

#INFORMAR DEL RESULTAT DE LA SUMA



