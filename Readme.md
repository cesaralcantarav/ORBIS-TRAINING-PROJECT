# Target           Help                                                        Usage
## ------           ----                                                        -----
## all-images       Lista todas las imagenes                                    make all-images
## build            construccion de la imagen                                   make build
## help             ayuda                                                       make help
## login            login de docker                                             make login
## push             Subir imagen al dockerhub                                   make push

# PREGUNTAS 

## 1. ¿Qué importancia tiene los tags en un proyecto?
    Son importantes para identificar de manera más rápida y práctica las versiones de un proyecto.        
## 2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
    En que el tag normal se indica solo la versión y el tag anotado indica la descripción.
## 3. ¿Cómo se sube todos los tags de git que hay en mi local?
    git push
## 4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
    Si
## 5. ¿Qué es y para qué sirve docker?
    Docker es un contenedor y sirve facilitar la ejecucion de una tarea definida, puesto que, contiene imagenes, librerias, etc, que
    son necesarias para su ejecucion.
## 6. ¿Cuál es la diferencia entre docker y VirtualBox?
    En que docker usa un kernel que controla todo y virtual box monta todo un sistema operativo, y se hace más pesado.
## 7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
    Si
## 8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
    Para la identificacion el dockerhub
## 9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
    latest