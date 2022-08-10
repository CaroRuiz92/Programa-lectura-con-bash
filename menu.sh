#!/bin/bash

menu () {
	echo " "
	echo "¿Qué script desea usar? Elija el número de la opción."
	echo " "

	# se selecciona el script para ejecutar:

	select opcion in $( ls -1 "./Codigos/" | grep \.sh$ ) "INTRO" "EXIT"
	do
		echo " "
		if [ -e $opcion ]; then
			echo "El script no existe. Vuelva a intentar."
			echo " "
			read -p "Presione cualquier tecla para continuar."
		elif [ $opcion == "EXIT" ]; then
			break
		elif [ $opcion == "INTRO" ]; then
			cat Intro.txt
			echo
			read -p "Presione cualquier tecla para continuar."
		else
			texto $opcion
			break
		fi
		menu
		break
	done
}

texto () {
	echo " "
	echo "¿Qué texto quiere analizar con el script? Escriba el número de la opción querida."
	echo " "

	# Se selecciona el texto para analizar:

	select archivo in $( ls -1 ./Texto/ | grep \.txt$ ) "Volver"; do
		echo " "
		if [ $archivo == "Volver" ]; then
			menu
			break
		elif [ -e $archivo ]; then
			echo "El archivo no existe."
			echo ""
			read -p "Presione cualquier tecla para continuar."
		else
			bash ./Codigos/$1 ./Texto/$archivo
			echo
			read -p "Presione cualquier tecla para continuar."
		fi
		menu
		break
	done
}

menu

