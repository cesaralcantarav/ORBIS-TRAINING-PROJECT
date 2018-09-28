.DEFAULT_GOAL := help
BUILD_TIMESTAMP ?= `date +%Y%m%d`
TAG_DEV			= ronaldgcr/orbis-training-docker:0.3.0

login: ## login de docker: make login
	@docker login

build: ## construccion de la imagen: make build
	cp PREGUNTAS.md docker/node/
	cp Readme.md docker/node/
	docker build -f docker/node/Dockerfile -t $(TAG_DEV) docker/node/
	rm docker/node/PREGUNTAS.md 
	rm docker/node/Readme.md

all-images: ## Lista todas las imagenes: make all-images
	docker image
	
push: ## Subir imagen al dockerhub: make push
	@make login
	@docker push $(TAG_DEV)

list-dirs: ## Listar archivos/carpetas dentro del contenedor
	docker run $(TAG_DEV) ls $(dirs)

help: ## ayuda: make help
	@printf "\033[31m%-16s %-59s %s\033[0m\n" "Target" "Help" "Usage"; \
	printf "\033[31m%-16s %-59s %s\033[0m\n" "------" "----" "-----"; \
	grep -hE '^\S+:.*## .*$$' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' | sort | awk 'BEGIN {FS = ":"}; {printf "\033[32m%-16s\033[0m %-58s \033[34m%s\033[0m\n", $$1, $$2, $$3}'
