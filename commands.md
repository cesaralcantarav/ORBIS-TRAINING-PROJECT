Listar directorios dentro del contenedor
docker run ronaldgcr/orbis-training-docker:0.2.1 ls /usr

Elimina un contenedor que no se encuentre encendido
 docker rm <CONTAINER ID>

Levanta el contenedor, lista los archivos dentro de la carpet /app y elimina el contenedor
docker run --rm -it  ronaldgcr/orbis-training-docker:0.2.1 ls /app

Levanta nginx con un puerto definido 1080: puerto host 80: puerto de container
docker run -it -p 1080:80  ronaldgcr/orbis-training-docker:0.3.0

docker run -it -v "$(pwd)/app/:/app" -w "/app"  ronaldgcr/orbis-training-docker:0.4.0 npm install