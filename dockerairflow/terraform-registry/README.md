----------------------------------------------------

PLASTIC ORIGIN PROJECT
TERRAFORM SCRIPTS FOR AIRFLOW DEPLOYMENT 1/2

v0.1 12/12/2020
david@archi-volt.eu

----------------------------------------------------

Terraform script to deploy on Azure :
- create registry 
- upload docker image in registry

Files
- variable.tf : terraforms variables
- main.tf : terraform commands

Related
- ../dockerairflow directory : docker image composition
- terraform scripts 2/2 to deploy docker image in container instance

HOWTO
- compose the docker image 
- modify variable.tf file
- sh : terraform apply