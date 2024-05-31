#!/bin/bash
#COMPTAR QUANTS NÚMEROS PARELLS HI HA
#ENTRE 1 I 100
I=1
FINAL=100
QUANTS=0
$((I % 2))do
    #SI I ES PARELL SUMA 1 A QUANTS
    #modul DE LA DIVISIÓ 
    if [[ $((I % 2)) -eq 0 ]]
    then
        #el numero és multiple de 2
        QUANTS=$((QUANTS+1))
    fi
    I=$((I+1))
done
echo "hi a $QUANTS múltiples de 2"