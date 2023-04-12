#!/bin/bash
read -p "Introduce la ruta de la carpeta donde copiar el fichero " carpeta
cp $1 $carpeta
echo "Fin del script"
