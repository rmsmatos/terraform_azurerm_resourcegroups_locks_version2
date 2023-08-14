terraform {
  required_version = ">= 1.5"
}

module "terraform_azurerm_resourcegroups_lock_version2" {
  source     = "github.com/rmsmatos/terraform_azurerm_resourcegroups_locks_version2"
  name       = "just-a-test"
  location   = "westeurope"
  managed_by = "00000000-0000-0000-0000-00000000000"
  tags = {
    environment = "production"
    costcentre  = "cost center"
  }
  lock_name  = "Lockek by Terraform"
  lock_level = "CanNotDelete"
  lock_notes = "We don't want people to delete this"
}

output "id" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.location
}

output "name" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.name
}

output "tags" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.tags
}

output "managed_by" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.managed_by
}

output "lock_id" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.lock_id
}

output "lock_name" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.lock_name
}

output "lock_scope" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.lock_scope
}

output "lock_level" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.lock_level
}

output "lock_notes" {
  value = module.terraform_azurerm_resourcegroups_lock_version2.lock_notes
}
