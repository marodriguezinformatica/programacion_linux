#!/bin/bash
for pid in $*
do
	kill -9 $pid 2> /dev/null
	if [ $? -ne 0 ]
	then
		echo "No se ha podido finalizar el proceso con PID= "$pid
	else
		echo "Proceso con PID= "$pid" finalizado correctamente"
	fi
done
