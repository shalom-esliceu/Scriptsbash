#!/bin/bash

# Obtenir la data actual en segons des de l'època
data_inici=$(date +%s)
if [[ ${#} -ne 1 ]]
then
    echo "cal un paràmetre"
    exit 1
fi

producte_FINS=${1}
NUM=1
RESULTAT=1
while [[ $NUM -le $producte_FINS ]]
do
    # RESULTAT=$((RESULTAT*NUM))
    RESULTAT=$(echo "$RESULTAT * $NUM" | bc)
    NUM=$((NUM+1))
done
data_fi=$(date +%s)
# Calcula la diferència en segons
diferencia=$(($data_inici - $data_fi))
echo "SUMATORI DE {producte_FINS} VAL $RESULTAT"
echo "LA SUMA S'HA FET EN ${diferencia} segons"