REP_HOME=/home/david-archi-volt/Code/plasticorigins-ops-db/dockerairflow
IMAGE_NAME=azurecr.io/apache/airflow:2.2.2
REGISTRY_NAME=podatabasedevcontainerregistry

.PHONY: init
init:
	terraform init

.PHONY: plan
plan:
	terraform plan

.PHONY: validate
validate:
	terraform validate

.PHONY: apply
apply: validate
	terraform apply --auto-approve

.PHONY: format
format:
	terraform fmt

.PHONY: destroy
destroy:
	terraform destroy --auto-approve

.PHONY: refresh
refresh:
	terraform refresh

.PHONY: checkov
checkov:
	checkov --directory .

.PHONY: az-login-registry
az-login-registry: apply ## login into the Azure using the username and password
	az acr login --name $(REGISTRY_NAME)

.PHONY: build-push-docker-image
build-push-docker-image: az-login-registry
	cd $(REP_HOME) && docker build -t $(REGISTRY_NAME).$(IMAGE_NAME) .
	docker tag $(REGISTRY_NAME).$(IMAGE_NAME) $(REGISTRY_NAME).$(IMAGE_NAME)
	docker push $(REGISTRY_NAME).$(IMAGE_NAME)

.PHONY: all
all: build-push-docker-image