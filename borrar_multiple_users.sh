#!/bin/bash
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

input_file="user.txt"

while IFS= read
do
    full_name=$(echo)
    username=$(echo)

    ./borrarUsuari
done < "$input_file"