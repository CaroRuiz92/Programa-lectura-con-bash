# Trabajo Práctico final de Entorno de Programación

Este proyecto se encarga de la lectura y análisis de textos ubicados en la carpeta "Texto". Los scripts desarrollados para tal tarea están escritos en linux bash y se ubican en la carpeta "Codigos".
Se apunta a analizar los siguientes aspectos que también están señalados en el archivo "Intro.txt":

1-statsWords.sh
Indicador de longitud de palabras (la más larga, la más corta y el promedio de longitud).

2-statsUsageWords.sh
Indicador de uso de palabras, de al menos cuatro letras.
Top de las 10 más usadas.

3-findNames.sh
Identificador de palabras que comienzan con mayúscula (sean nombres propios o no).

4-statsSentences.sh
Indicador de longitud de oraciones (la más larga, la más corta y la de longitud promedio).

5-blankLinesCounter.sh
Contador de líneas en blanco.

# Dockerfile

Si se quiere ejecutar a través de Dcoker, se pueden utilizar los siguientes comandos en la consola:

sudo docker build -t tpedp1 .
sudo docker un -it tpedp1

Hecho esto, se podrá explorar el programa a través de su menú y salir con la opción correspondiente.
