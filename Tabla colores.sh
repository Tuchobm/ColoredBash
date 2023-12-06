#!/bin/bash
# Muestra de colores en la terminal.
# Se introduce mediante la expresión: \e[x;y;zm $PS1 \e[m
# Donde: \e[x;y;zm determina los nuevos colores y formato
# y: \e[m cambia al color predeterminado.

# Texto			Color texto		Color fondo
#  0 – normal		30 – Negro		40 – Negro
#  1 – negrita		31 – Rojo		41 – Rojo
#  4 – subrayado	32 – Verde		42 – Verde
# 			33 – Amarillo		43 – Amarillo
# 			34 – Azul		44 – Azul
# 			35 – Púrpura		45 – Púrpura
# 			36 – Turquesa		46 – Turquesa
# 			37 – Blanco		47 – Blanco

echo "Tabla de colores en la terminal"
echo "-------------------------------"
echo 'Estblecer mediante combinación \e[formato;texto;fondom + Texto a formatear + \e[m'
echo "Texto:		Negro	Rojo	Verde	Amari	Azul	Purpur	Turque	Blanco"
echo "Texto:		  30	  31	  32	  33	  34	  35	  36	  37"
for z in {40..47}; do
    echo -n -e "Fondo: $z\t"
    for y in {30..37}; do
	i="\e[0;$y;$z"'m'
	f="\e[m"
	echo -n -e "$i*Color$f\t"
    done
    echo
done

