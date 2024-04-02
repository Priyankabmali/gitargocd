terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }

  backend "azurerm" {
    storage_account_name = "priyanka"
    container_name       = "terraformstatefile"
    key                  = "terraform.tfstate"
    access_key           = "_storagekey_"
    features {}
  }

  provider "azurerm" {
    features {}
  }
}

resource "azurerm_resource_group" "priyankagroup" {
  name     = "firstresources"
  location = "East US"
}
