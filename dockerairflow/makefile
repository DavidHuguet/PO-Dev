.PHONY: compose
compose:
	echo "a venir"

.PHONY: registry
registry: 
	cd ./terraform-registry && make all

.PHONY: instanciation
instanciation: 
	cd ./terraform-instanciation && make apply 

.PHONY: destroy
destroy:
	cd ./terraform-instanciation && make destroy 
	cd ./terraform-registry && make destroy