#!/bin/bash
eq_goles=""
goles=0
eq_rojas=""
rojas=0
while read linea
do
	g=`echo $linea | cut -d "-" -f 2`
	e=`echo $linea | cut -d "-" -f 1`
	r=`echo $linea | cut -d "-" -f 5`
	if [ $g -gt $goles ]
	then
		goles=$g
		eq_goles=$e
	fi
	if [ $r -gt $rojas ]
	then
		rojas=$r
		eq_rojas=$e
	fi		
done<liga
echo $eq_goles"("$goles")" > estadisticas
echo $eq_rojas"("$rojas")" >> estadisticas

