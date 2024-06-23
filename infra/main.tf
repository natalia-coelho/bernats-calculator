provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "example-appservice"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    app_command_line = ""
    linux_fx_version = "DOCKER|your-docker-image:latest"
  }

  app_settings = {
    "DOCKER_REGISTRY_SERVER_URL"      = "https://index.docker.io"
    "DOCKER_REGISTRY_SERVER_USERNAME" = var.docker_username
    "DOCKER_REGISTRY_SERVER_PASSWORD" = var.docker_password
  }
}

output "app_service_default_hostname" {
  value = azurerm_app_service.example.default_site_hostname
}
