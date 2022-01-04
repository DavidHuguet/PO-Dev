----------------------------------------------------

PLASTIC ORIGIN PROJECT
TERRAFORM SCRIPTS FOR AIRFLOW DEPLOYMENT 2/2

v0.1 12/12/2020
david@archi-volt.eu

----------------------------------------------------

Terraform script to deploy on Azure :
- create container instance
- deploy docker image in container instance 


Files
- variable.tf : terraforms variables
- main.tf : terraform commands

Related
- ../dockerairflow directory : docker image composition
- ../terraform scripts 1/2 to create registry and upload docker image

HOWTO
<img url="https://res.cloudinary.com/practicaldev/image/fetch/s--fl64gXiL--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/jr1mb912yznjlzojealm.png"></img>
- make apply