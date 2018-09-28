Listar directorios dentro del contenedor
docker run ronaldgcr/orbis-training-docker:0.2.1 ls /usr

Elimina un contenedor que no se encuentre encendido
 docker rm <CONTAINER ID>

Levanta el contenedor, lista los archivos dentro de la carpet /app y elimina el contenedor
docker run --rm -it  ronaldgcr/orbis-training-docker:0.2.1 ls /app