#!/bin/bash
#Recibir Carpeta
nombreCarpeta=$1


if [$# -lt 1 ]; then
	echo "No se introdujeron argumentos... Saliendo"
	exit 1
elif [ ! -d "$nombreCarpeta" ]; then
	echo "El argumento no es una carpeta... Saliendo"
	exit 1
else 
	if grep -rl "home" "$nombreCarpeta"; then
		echo "Se encontró 'home' en los siguientes archivos:"
		grep -rl "home" "$nombreCarpeta"
	else
		echo "No se encontró home"
fi

