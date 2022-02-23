variable "subscription_id" {
  default = "ad31bdcf-3e05-41d4-857b-ae5b767fc8cd"
}

variable "resource_group_name" {
  default = "rg-plastico-database-dev"
}

variable "registry_name" {
  default = "podatabasedevcontainerregistry"
}

variable "resource_group_location" {
  default = "francecentral"
}

variable "instance_name" {
  default = "podatabasedevcontainerinstances"
}

variable "container_name_airflow" {
  default = "airflow"
}

variable "container_name_redis" {
  default = "redis"
}

variable "container_name_postgres" {
  default = "postgres"
}


variable "containerimage_name_airflow" {
  default = "apache/airflow:2.2.3"
}

variable "containerimage_name_redis" {
  default = "redis:latest"
}

variable "containerimage_name_postgres" {
  default = "postgres:13"
}
