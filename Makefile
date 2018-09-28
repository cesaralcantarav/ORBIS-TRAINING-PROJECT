.DEFAULT_GOAL := help
BUILD_TIMESTAMP ?= `date +%Y%m%d`
TAG_DEV			= ronaldgcr/orbis-training-docker:0.2.$(BUILD_TIMESTAMP)

login: ## login de docker: make login
	@docker login

build: ## construccion de la imagen: make build
	docker build -f docker/node/Dockerfile -t $(TAG_DEV) docker/node/

all-images: ## Lista todas las imagenes: make all-images
	docker image
	
push: ## Subir imagen al dockerhub: make push
	@make login
	@docker push $(TAG_DEV)

help: ## ayuda: make help
	@printf "\033[31m%-16s %-59s %s\033[0m\n" "Target" "Help" "Usage"; \
	printf "\033[31m%-16s %-59s %s\033[0m\n" "------" "----" "-----"; \
	grep -hE '^\S+:.*## .*$$' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' | sort | awk 'BEGIN {FS = ":"}; {printf "\033[32m%-16s\033[0m %-58s \033[34m%s\033[0m\n", $$1, $$2, $$3}'
