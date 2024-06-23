provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-bernats-calculator" {
  name     = "rg-bernats-calculator"
  location = "westus3"
}

resource "azurerm_service_plan" "asp-bernats-calculator" {
  name                = "asp-bernats-calculator"
  location            = azurerm_resource_group.rg-bernats-calculator.location
  resource_group_name = azurerm_resource_group.rg-bernats-calculator.name
  sku_name            = "F1"
  os_type             = "Linux"
}

resource "azurerm_linux_web_app" "app-bernats-calculator" {
  name                = "app-bernats-calculator"
  location            = azurerm_resource_group.rg-bernats-calculator.location
  resource_group_name = azurerm_resource_group.rg-bernats-calculator.name
  service_plan_id     = azurerm_service_plan.asp-bernats-calculator.id

  site_config {
    always_on = false
    application_stack {
      docker_image_name        = "bemesko/bernats-calculator:latest"
      docker_registry_url      = "https://index.docker.io"
      docker_registry_username = var.docker_username
      docker_registry_password = var.docker_password
    }
  }

}

output "app_service_default_hostname" {
  value = azurerm_linux_web_app.app-bernats-calculator.default_hostname
}
