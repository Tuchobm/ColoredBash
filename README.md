# ColoredBash
## Como dar color a la Bash
Para darle color al prompt, la estructura es la siguiente,

``` bash
\e[x;y;zm $PS1 \e[m
```
- Con ``` \e[ ``` comienzas la secuencia
- ``` x;y;zm ``` definen el formato, color de texto y color de fondo.
- ``` \e[m ``` define el final de la secuencia.
Es importante que definas el final de la secuencia porque de otra manera, el texto, a continuación del prompt aparecerá en el último color que hayas definido.

Con el comando echo se debe de ejecutar con el parametro -e haciendo que el bash interpret el comando \e (o sea el escape) de esta manera:

echo -e ‘Esto es \e[0;31mrojo\e[0m y esto es \e[1;34mazul resaltado\e[0m’

Así, la definición de colores se corresponde con la siguiente tabla,

|Texto|Color texto|Color fondo|
|---|---|---|
|0 – normal|30 – Negro|40 – Negro|
|1 – negrita|31 – Rojo|41 – Rojo|
|4 – subrayado|32 – Verde|42 – Verde|
||33 – Amarillo|43 – Amarillo|
||34 – Azul|44 – Azul|
||35 – Púrpura|45 – Púrpura|
||36 – Turquesa|46 – Turquesa|
||37 – Blanco|47 – Blanco|

Ahora ya es cuestión que pruebes todas las combinaciones que tu consideres, para personalizar y colorear la línea de comandos. Una observación, cada vez que comienzas una secuencia, utilizando ``` \e[ ```, sobrescribes el formato anterior. Y cuando terminas con ``` \e[m ```, simplemente vuelves al estado por defecto. En mi caso, ese estado por defecto es texto en blanco y fondo negro. Y el formato de texto es normal.
