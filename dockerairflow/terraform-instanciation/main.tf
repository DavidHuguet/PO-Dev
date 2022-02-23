terraform {
  required_version = ">= 0.12.6"
  required_providers {
    azurerm = {
      version = "~> 2.53.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id            = var.subscription_id
  skip_provider_registration = true
}

resource "azurerm_container_group" "aci" {
  name                = var.instance_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  ip_address_type     = "public"
  dns_name_label      = var.instance_name
  os_type             = "Linux"

  container {
    name   = var.container_name_airflow
    image  = var.containerimage_name_airflow
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port     = 8080
      protocol = "TCP"
    }
  }

  container {
    name   = var.container_name_redis
    image  = var.containerimage_name_redis
    cpu    = "0.5"
    memory = "1.5"
  }

  container {
    name   = var.container_name_postgres
    image  = var.containerimage_name_postgres
    cpu    = "0.5"
    memory = "1.5"
  }

  tags = {
    environment = "testing"
  }
} 