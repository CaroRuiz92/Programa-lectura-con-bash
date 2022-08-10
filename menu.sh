#!/bin/bash

menu () {
	echo "¿Qué script desea usar?"
	echo " "

	# se selecciona el script para ejecutar:

	select opcion in $( ls -1 "./Codigos/" | grep \.sh$ ) "INTRO" "EXIT"
	do
		if [ -e $opcion ]; then
			echo "El script no existe. VUelva a intentar."
			echo " "
			read -p "Presione cualquier tecla para continuar."
		elif [ $opcion == "EXIT" ]; then
			break
		elif [ $opcion == "INTRO" ]; then
			cat Intro.txt
			echo
			read -p "Presione cualquier tecla para continuar."
		else
			archivo $opcion
			break
		fi
		menu
		break
	done
}

texto () {
	echo "¿Qué texto quiere analizar con el script?"
	echo " "

	# Se selecciona el texto para analizar:

	select archivo in $( ls -1 ./Texto/ | grep \.txt$ ) "Volver"; do
		if [ $archivo == "Volver" ]; then
			menu
			break
		elif [ -e $archivo ]; then
			echo "El archivo no existe."
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

