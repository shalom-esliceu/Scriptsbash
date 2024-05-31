!/bin/bash

read -p "Com et diuen? " NOM

if [[ ${NOM} == "guillem" ]]
then
    echo "ets en guillem"
else
    echo "ets en ${NOM}"
fi