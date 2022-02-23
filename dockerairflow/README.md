----------------------------------------------------

PLASTIC ORIGIN PROJECT
DOCKER COMPOSE FOR AIRFLOW


v0.1 12/12/2020
david@archi-volt.eu

----------------------------------------------------

Terraform script to deploy on Azure :
- compose airflow docker


Files

Related
- ../terraform scripts 1/2 to create registry and upload docker image on Azure
- ../terraform scripts 2/2 to instanciate docker instance on Azure

HOWTO


https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html

- Telecharger 
    docker-compose up airflow-init
- Tester sur le poste 
    docker-compose up
- Arrêter et nettoyer
    docker-compose down --volumes --rmi all
Pour lancer les terraform sur Azure
    ./deploy.sh