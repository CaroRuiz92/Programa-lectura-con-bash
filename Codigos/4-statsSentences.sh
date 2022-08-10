#!/bin/bash

larga=''
nro_larga=0
corta=''
nro_corta=99999999999
total=0
cantidad=0

punto='[.]$'
oracion=""

# Con el siguiente código se procede a reemplazar "larga" y "corta" con la oracion que le corresponda.

for orac in $(cat $1); do
	if [[ $orac =~ $punto ]]; then
		oracion="$oracion $orac"

		let total+=${#oracion}
		let cantidad++

		if [[ $nro_larga -lt ${#oracion} ]]; then
			larga=$oracion
			nro_larga=${#oracion}
		fi
		
		if [[ ${#oracion} -lt $nro_corta ]]; then
			corta=$oracion
			nro_corta=${#oracion}
		fi

		oracion=""
	else
		oracion="$oracion $orac "
	fi
done

# Se calcula el promedio

promedio=$(($total/$cantidad))

echo "Información sobre el archivo $(basename $1):"
echo "La oración más larga es: \"$larga\" "
echo "Con la longitud de $nro_larga carácteres."
echo "La oración más corta es: \"$corta\" "
echo "Con una longitud de $nro_corta carácteres."
echo "El promedio de carácteres por oración es de $promedio."
