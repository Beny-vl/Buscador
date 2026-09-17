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
	grep -rl "home" "$nombreCarpeta"
fi

