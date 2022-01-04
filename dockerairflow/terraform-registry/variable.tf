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

variable "docker_directory" {
  default = "/home/david-archi-volt/Code/plasticorigins-ops-db/dockerairflow"
}

variable "docker_image" {
  default = "apache/airflow:2.2.3"
}