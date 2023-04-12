#!/bin/bash
read -p "Introduce precio artículo " precio
total=0
while [ $precio -ne 0 ]
do
	read -p "Introduce número de artículos " num
	total=`echo "scale=2;$total+$precio*$num" | bc -l`
	read -p "Introduce precio artículo " precio
done
descuento=`echo "scale=2;$total*$1/100" | bc -l`
final=`echo "scale=2;$total-$descuento" | bc -l`
echo "El precio final de la compra es: "$final
	
