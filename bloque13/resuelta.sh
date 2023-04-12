#!/bin/bash
agenda="agenda.txt"
menu(){
	echo "Pulse la opción deseada: "
	echo "1- Reiniciar agenda"
	echo "2- Insertar contacto"
	echo "3- Buscar contacto"
	echo "4- Mostrar agenda"
	echo "5- Salir"
	read opcion
}
reiniciar(){
	rm $agenda
	touch $agenda	
}
insertar(){
	read -p "Nombre contacto " nombre
	read -p "Teléfono contacto " telefono
	echo $nombre":"$telefono >> $agenda
}
buscar(){
	read -p "Nombre contacto " nombre
	grep $nombre $agenda
}
mostrar(){
	cat $agenda
}
opcion=-1
while [ $opcion -ne 5 ]
do
	menu
	if [ $opcion -eq 1 ]
	then
		reiniciar
	elif [ $opcion -eq 2 ]
	then
		insertar
	elif [ $opcion -eq 3 ]
	then
		buscar
	elif [ $opcion -eq 4 ]
	then
		mostrar
	else
		if [ $opcion -ne 5 ]
		then
			echo "Opción incorrecta"
		fi
	fi
done

