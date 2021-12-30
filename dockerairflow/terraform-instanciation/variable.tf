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
  default = "podatabasedevcontainerregistry"
}

variable "container_name" {
  default = "podatabasedevairflowcontainer"
}

variable "containerimage_name" {
  default = "apache/airflow:2.2.2"
}

