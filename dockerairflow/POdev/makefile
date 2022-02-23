#!/bin/bash
include ./.env
init: 
	docker-compose -f docker-compose.yaml up -d
commit:
	docker ps > ./dockerps.tmp
	awk -f ./commit.awk ./dockerps.tmp > ./dockercommit.sh
	chmod 755 ./dockercommit.sh
	echo "DOCKER COMMIT GENERATED"
	cat ./dockercommit.sh
	echo "DOCKER COMMIT EXECUTION"
	./dockercommit.sh
push:
	#az acr login --name $(AZURE_REGISTRY_NAME)
	docker image ls | grep podev > ./dockerimage.tmp
	cat ./dockerimage.tmp
	awk -v AZURE_URL=${AZURE_URL} -v AZURE_REGISTRY_NAME=$(AZURE_REGISTRY_NAME) -f ./push.awk ./dockerimage.tmp > ./dockerpush.sh
	chmod 755 ./dockerpush.sh
	./dockerpush.sh
	#
instanciate:
#TBD

clean:
	docker-compose down --volumes --rmi all