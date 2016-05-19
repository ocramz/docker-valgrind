ACCOUNT = ""
PROJECT = docker-valgrind

.DEFAULT_GOAL := help

help:
	@echo "Use \`make <target> [ACCOUNT=<accountname>]' where <accountname> is"
	@echo "your docker account name and <target> is one of"
	@echo "  help     to display this help message"
	@echo "  build    to build the docker image"
	@echo "  login    to login to your docker account"
	@echo "  push     to push the image to the docker registry"
	@echo "  run      to run the image"

build:
	docker build -t $(ACCOUNT)/$(PROJECT) .

login:
	docker login -u $(ACCOUNT)

push: build login
	docker push $(ACCOUNT)/$(PROJECT)

run:
	docker run -it --rm $(ACCOUNT)/$(PROJECT)
