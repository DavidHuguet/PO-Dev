REP_HOME=/home/david/Code/PO-Dev/PO-Dev/dockerairflow
IMAGE_NAME_AIRFLOW=azurecr.io/apache/airflow:2.2.3
IMAGE_NAME_REDIS=azurecr.io/redis
IMAGE_NAME_POSTGRES=azurecr.io/postgres:13
REGISTRY_NAME=podatabasedevcontainerregistry

.PHONY: init
init:
	terraform init

.PHONY: plan
plan: init
	terraform plan

.PHONY: validate
validate: plan
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
	cd $(REP_HOME) && docker build -t $(REGISTRY_NAME).$(IMAGE_NAME_AIRFLOW) .
	cd $(REP_HOME) && docker build -t $(REGISTRY_NAME).$(IMAGE_NAME_REDIS) .
	cd $(REP_HOME) && docker build -t $(REGISTRY_NAME).$(IMAGE_NAME_POSTGRES) .
	docker tag $(REGISTRY_NAME).$(IMAGE_NAME_AIRFLOW) $(REGISTRY_NAME).$(IMAGE_NAME_AIRFLOW)
	docker push $(REGISTRY_NAME).$(IMAGE_NAME_AIRFLOW)
	docker tag $(REGISTRY_NAME).$(IMAGE_NAME_REDIS) $(REGISTRY_NAME).$(IMAGE_NAME_REDIS)
	docker push $(REGISTRY_NAME).$(IMAGE_NAME_REDIS)
	docker tag $(REGISTRY_NAME).$(IMAGE_NAME_POSTGRES) $(REGISTRY_NAME).$(IMAGE_NAME_POSTGRES)
	docker push $(REGISTRY_NAME).$(IMAGE_NAME_POSTGRES)
.PHONY: all
all: build-push-docker-image