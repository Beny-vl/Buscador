#!/bin/bash
#Recibir Carpeta
palabraBuscar=$1
nombreCarpeta=$2


if [$# -lt 1 ]; then
	echo "No se introdujeron argumentos... Saliendo"
	exit 1
elif [ -z "$2" ]; then
	if grep -rl "$palabraBuscar" .; then 
		echo "Se encontró $palabraBuscar en esos archios"
	else 
		echo "No se encontró $palabraBuscar en los archivos"
	fi
elif [ ! -d "$nombreCarpeta" ]; then
	echo "El argumento 2 no es una carpeta... Saliendo"
	exit 1
else 
	if grep -rl "$palabraBuscar" "$nombreCarpeta"; then
		echo "Se encontró $palabraBuscar en esos archivos"
	else
		echo "No se encontró $palabraBuscar en los archivos"
	fi
fi
