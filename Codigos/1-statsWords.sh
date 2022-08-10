#!/bin/bash

palabra_larga=''
nro_largo=0
palabra_corta=''
nro_corto=99
total=0
cantidad=0

for pal in $(cat $1); do
	let total+=${#pal}
	let cantidad++

	if [[ $nro_largo < ${#pal} ]]; then
		palabra_larga=$pal
		nro_largo=${#pal}
	fi

	if [[ ${#pal} < $nro_corto ]]; then
		palabra_corta=$pal
		nro_corto=${#pal}
	fi
done

promedio=$(($total/$cantidad))

# Se imprimen los resultados:

echo
echo "En el texto de $(basename $1):"
echo "La palabra más larga es \"$palabra_larga\" y tiene $nro_largo carácteres"
echo "La palabra más corta es \"$palabra_corta\" y tiene $nro_corto carácteres"
echo "El promedio de carácteres por palabra es de $promedio"

