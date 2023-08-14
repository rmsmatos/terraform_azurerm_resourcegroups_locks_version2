module "azurerm_resourcegroup" {
  source     = "github.com/rmsmatos/terraform_azurerm_resourcegroup_version2"
  name       = var.name
  location   = var.location
  managed_by = var.managed_by
  tags       = var.tags
}

resource "azurerm_management_lock" "lock" {
  name       = var.lock_name
  scope      = module.azurerm_resourcegroup_version.id
  lock_level = var.lock_level
  notes      = var.lock_notes
}
