#!/bin/bash

# Se crea un diccionario con palabras como claves y sus apariciones como valores

declare -A repeticiones

for pal in $(grep -P -o '\b\w+\b' $1); do
	# se filtran las palabras con menos de tres carácteres
	if [[ ${#pal} > 3 ]]; then
		let repeticiones[$pal]++
	fi
done

# Se crea otro diccionario con apariciones como las claves y las palabras como valores

declare -A inverso

for pal in ${!repeticiones[@]}; do
	inverso[${repeticiones[$pal]}]+=" $pal"
done

#Se ordenas las apariciones de mayor a menor

IFS=$'\n' lista=$( sort -gr <<< "${repeticiones[*]}")
unset IFS

TOP=1

echo "Las diez palabras con más apariciones en $(basename $1)"
echo " "

# Se imprimen en consola las 10 palabras con más apariciones.

valor_anterior=0

for item in ${lista[@]}; do
	if [[ ($item != $valor_anterior) && ($TOP != 10) && ( $TOP != ${#lista} ) ]]; then
		echo "Mejores $TOP con $item apariciones: ${inverso[$item]}"
		echo
		let TOP++
		valor_anterior=$item
	fi
done

