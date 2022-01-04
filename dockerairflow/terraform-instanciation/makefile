.PHONY: init
init:
	terraform init

.PHONY: plan
plan: init
	terraform plan

.PHONY: apply
apply: validate
	terraform apply --auto-approve

.PHONY: format
format:
	terraform fmt

.PHONY: validate
validate: plan
	terraform validate

.PHONY: destroy
destroy:
	terraform destroy --auto-approve

.PHONY: refresh
refresh:
	terraform refresh

.PHONY: checkov
checkov:
	checkov --directory . 

.PHONY: all
all : apply