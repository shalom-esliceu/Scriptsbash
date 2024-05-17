#!/bin/bash
#COMPTAR QUANTS NÚMEROS PARELLS HI HA
#ENTRE 1 I 100
I=1
FINAL=100
QUANTS=0
while [[ INICI -le FINAL ]]
do
    if [[ $((I % 2)) -eq 0 ]]
    then
        QUANTS=$((QUANTS+1))
    fi
    INICI
done