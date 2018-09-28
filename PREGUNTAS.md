# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Cesar Alcantara
- Pedro Pairazaman

Scrum Master Sol


## ¿Porqué es necesario crear un contenedor con esta bandera -it ?
Para acceder al terminal del conteiner
## ¿Qué pasa si no le pongo -it?
No accedo al terminal del conteiner

## ¿Para qué sirve ejecutar el comando run al eejcutar una imagen?
Para inicializar y accder a la imagen

## Agregar a preguntas.md, la respuesta a esta pregunta: ¿Cuál es la diferencia entre docker ps y docker ps -a?
En que docker ps solo me lista la que están en ejecución y docker ps -a, lista todas.

docker run ronaldgcr/orbis-training-docker:0.2

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
   En el contenedor se llaman a las tareas definidas en una imgen
2. ¿Cómo listo las imágenes que hay en mi computadora?
   docker image
3. ¿Cómo salgo de un contenedor de docker?
   exit
4. ¿Se elimina el contenedor al salir de ella?
   No
5. ¿Cómo elimino un contenedor?
    docker rm <CONTAINER ID>
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
   -i: modo iterativo, -t: terminal, --rm para eliminar contenedor
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
   listando con ls
8. ¿Cómo se comenta una linea de código en Dockerfile?
    con #

1. ¿Qué es NGINX?

2. ¿Cómo expongo puertos en docker?
   
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
4. 
5. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?    