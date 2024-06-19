terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.108.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}


module "lz-vending" {
    for_each = var.lz_vending
  source   = "Azure/lz-vending/azurerm"
  version  = "4.1.1"
  location = "${var.primary_location}"

  subscription_alias_enabled = true
  subscription_alias_name    = each.value.subscription_alias_name
  subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/3ae5db7a-9d4b-5abb-20bd-1af2ecf39a1e:31806f85-8d2d-4e59-b04d-9844eaf7e670_2019-05-31"
  # subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/${var.billing_profile}"
  subscription_display_name  = each.value.subscription_display_name
  subscription_workload      = each.value.subscription_workload
}