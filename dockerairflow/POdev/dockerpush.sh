#Docker push file generated automatically by makefile
#Generated on 02/14/2022 15:39:42
docker tag postgres:podev_postgres_1 podatabasedevcontainerregistry.azurecr.io/postgres:podev_postgres_1
docker push podatabasedevcontainerregistry.azurecr.io/postgres:podev_postgres_1
docker tag apache/airflow:podev_airflow-triggerer_1 podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-triggerer_1
docker push podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-triggerer_1
docker tag apache/airflow:podev_airflow-scheduler_1 podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-scheduler_1
docker push podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-scheduler_1
docker tag apache/airflow:podev_airflow-worker_1 podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-worker_1
docker push podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-worker_1
docker tag apache/airflow:podev_flower_1 podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_flower_1
docker push podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_flower_1
docker tag apache/airflow:podev_airflow-webserver_1 podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-webserver_1
docker push podatabasedevcontainerregistry.azurecr.io/apache/airflow:podev_airflow-webserver_1
