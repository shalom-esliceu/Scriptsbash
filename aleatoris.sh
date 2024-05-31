#!/bin/bash
#aquest script ha de tenir un paràmetre
#obligatori que serà la 
#quantitat de números a genera
if [[ ${#} -ne 1 ]]
then
    echo "has d'introduir un paràmetre"
    exit 1
fi

#hem de recollir el paràmetre i guardar-lo a la variable QUANTS
QUANTS=${1}


URL="https://php.enguillem.es/random.php?num=${QUANTS}&min=1&max=100&col=1&base=10&format=plain&rnd=new"
echo ${URL}

#EXECUTAR URL I GUARDAM EL RESULTAT DINS LA VARIABLE NUMEROS
NUMEROS=$(curl ${URL})
# NUMEROS="23 52 1 20 7 8 99"
#ARA HEM DE RECORRE AQUEST NÚMEROS PER CALCULAR LA SUMA
SUMA=0
# echo "${NUMEROS}"
for N in ${NUMEROS}
do
    # echo "NUMERO ${N}"
    #ACUMULAR EL NÚMERO ACTUAL A LA SUMA
    SUMA=$((SUMA+N))

    
done
MITJANA=$(echo "scale=3; ${SUMA}/${QUANTS}" | bc)
#INFORMAR DEL RESULTAT DE LA SUMA
echo "LA SUMA VAL: ${SUMA}"
echo "La mitjana val: ${MITJANA}"