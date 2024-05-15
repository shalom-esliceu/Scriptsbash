#!/bin/bash

read -p "Como te llamas? " NOM

if [[ ${NOM} == "Legna" ]]
then
    echo "Eres Legna"
else
    echo "Eres ${NOM}"
fi