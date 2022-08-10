#!/bin/bash

nombre="^[A-Z][a-z]+"

echo "Lista de nombres que inician con mayúscula en el texto de $(basename $1):"

# se filtran las palabras que inician con mayúscula y continúan con minúscula y las imprimimos

for palabra in $(cat $1); do
	if [[ $palabra =~ $nombre ]]; then
		echo "-$palabra"
	fi
done
