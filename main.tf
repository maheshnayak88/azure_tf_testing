terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.50.0"
    }
    archive = {
      source = "hashicorp/archive"
      version = "2.3.0"
    }
  }
}


provider "archive" {
}



####################
# AZURE
####################



provider "azurerm" {
  features {}
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
}

variable "ARM_SUBSCRIPTION_ID" {
  type = string
  sensitive = true
}

variable "ARM_CLIENT_ID" {
  type = string
  sensitive = true
}

variable "ARM_CLIENT_SECRET" {
  type = string
  sensitive = true
}

variable "ARM_TENANT_ID" {
  type = string
  sensitive = true
}

variable "default_location" {
  description = "The default location for Azure resources."
  default     = "eastus"
}

####################
# Snowflake: Later
####################
