#!/bin/bash

NUMEROS



#       echo "NUMERO: ${NUMERO}"
#       SUMA=$((SUMA+NUMERO))
# done
# echo "suma: ${SUMA}"


#AQUEST SCRIPT HA D'ADMETRE ENTRE 3 O 10 PARÀMETRES
if [[ ${#} -lt 3 || ${#} -gt 10 ]]
then
    echo "has d'introduir entre 3 i 10 paràmetres"
    exit 1
fi

#COM PODEM RECOLLIR UNA LLISTA DE PARÀMETRES
NUMEROS=${@} #AGAFA TOTS ELS PARÀMETRES
SUMA=0
for N in ${NUMEORS}
do
    echo "N: ${N}"
    SUMA=$((SUMA+N))
done
echo "SUMA: ${SUMA}"