#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
echo "el número a adivinar és $adivina"
########################################################
# Escriu el teu codi aqui
########################################################

INTENTS_TOTALS=3
INTENTS_CONSUMITS=0
while [[ INTENTS_CONSUMITS -lt INTENTS_TOTALS ]]
do
    INTENTS_CONSUMITS=$(( INTENTS_CONSUMITS + 1 ))
    read -p "INTRODUEIX UN NÚMERO: " NUMERO_INTRODUIT

    if [[ $NUMERO_INTRODUIT -lt adivina  ]]
    then
        echo "Fred!"
    elif [[ $NUMERO_INTRODUIT -gt adivina  ]]
    then
        echo "Calent!"
    else
        echo "Eureka!"
        exit 0
    fi
done

########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"