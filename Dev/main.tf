terraform {
  required_version = ">= 1.0.0, < 2.0.0"
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "satfstate109234"
    container_name       = "tfstate"
    key                  = "FilestructureTest/prod/rg/terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# module "rg" {
#   source = "github.com/Jamesafluke/TerraformCram.git//FilestructureTest/modules/modules/rg?ref=v1.01.0"
#   location = "westus2"
#   rg_name  = "rg_filestructureTest_prod"
# }