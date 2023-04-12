#!/bin/bash
read -p "Introduce un número " num
if [ $num -eq 1 ]
then
	read -p "Introduce una cadena de texto " cadena
	sudo usermod -l $cadena $1
	
elif [ $num -eq 2 ]
then
	read -p "Introduce el nombre de un grupo " grupo
	sudo usermod -g $grupo $1 
else
	echo "Opción incorrecta"
fi
