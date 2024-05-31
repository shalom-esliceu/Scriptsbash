#!/bin/bash
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

input_file="users.txt"

while IFS= read -r line
do
  # Llegeix el nom complet i l'username des del fitxer
  full_name=$(echo $line | cut -d ' ' -f 1-2)
  username=$(echo $line | cut -d ' ' -f 3)
  
  # Crida l'script per crear l'usuari
   ./creaUsuari.sh "$full_name" $username
done < "$input_file"