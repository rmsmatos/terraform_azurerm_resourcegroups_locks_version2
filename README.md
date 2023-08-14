<img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="200px">

# README

[![This is the link to Cloud][azure-badge]][azure] [![This is the CHANGELOG file][changelog-badge]][changelog] [![This is the NOTICE file][notice-badge]][notice] [![This is the LICENSE file][license-badge]][license]

# Resource: azurerm_resourcegroups_locka

Creates an Azure resource group given a name, location and tags (optional). If will forcefully create a lock CanNotDelete on the Resource Group with default messages.  

<!-- BEGIN_TF_DOCS -->

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | >= 3.66.0 |
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | >= 3.66.0 |
#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azurerm_resourcegroup"></a> [azurerm_resourcegroup](#module_azurerm_resourcegroup) | github.com/rmsmatos/terraform_azurerm_resourcegroup_version2 | n/a |
#### Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.lock](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input_location) | (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input_name) | (Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_lock_level"></a> [lock_level](#input_lock_level) | (Optional) Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), CanNotDelete and ReadOnly. | `string` | `"CanNotDelete"` | no |
| <a name="input_lock_name"></a> [lock_name](#input_lock_name) | (Optional) Specifies a named for this Resource Group Lock. | `string` | `"Locked by Terraform module on creation"` | no |
| <a name="input_lock_notes"></a> [lock_notes](#input_lock_notes) | (Optional) Sets a description on the Resource Group Lock. | `string` | `"Resource Group was locked by Terraform module"` | no |
| <a name="input_managed_by"></a> [managed_by](#input_managed_by) | (Optional) The ID of the resource or application that manages this Resource Group. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input_tags) | (Optional) A map of strings for tagging the resource. Changing this updates the resource. | `map(string)` | `null` | no |
#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | Returns Resource Group ID. |
| <a name="output_location"></a> [location](#output_location) | Returns Resource Group Location. |
| <a name="output_lock_id"></a> [lock_id](#output_lock_id) | Returns Resource Group Lock ID. |
| <a name="output_lock_level"></a> [lock_level](#output_lock_level) | Returns Resource Group Lock Level |
| <a name="output_lock_name"></a> [lock_name](#output_lock_name) | Returns Resource Group Lock Name. |
| <a name="output_lock_notes"></a> [lock_notes](#output_lock_notes) | Returns Resource Group Lock Note. |
| <a name="output_lock_scope"></a> [lock_scope](#output_lock_scope) | Returns Resource Group Lock scope |
| <a name="output_managed_by"></a> [managed_by](#output_managed_by) | Returns the ID of the resource or application that manages this Resource Group. |
| <a name="output_name"></a> [name](#output_name) | Returns Resource Group Name. |
| <a name="output_tags"></a> [tags](#output_tags) | Returns Resource Group Tags. |

### Example
```hcl
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
  value = module.terraform_azurerm_resourcegroups_lock_version2.id
}

output "location" {
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
```

<!-- END_TF_DOCS -->

## Related documentation

Azure regions: [azure.microsoft.com/en-us/global-infrastructure/regions/](https://azure.microsoft.com/en-us/global-infrastructure/regions/)

## Authors
Created and maintained by Rui Matos.  
©Rui Matos 2023

## License
This source code is licensed under the Apache-2.0 license found in the
LICENSE file in the root directory of this source tree [license] (./LICENSE.md).


---

[azure]: https://portal.azure.com
[azure-badge]: https://img.shields.io/badge/cloud-Microsoft%20Azure-blue
[readme]: ./README.md
[readme-badge]: https://img.shields.io/badge/readme-information-red
[usage]: ./USAGE.md
[usage-badge]: https://img.shields.io/badge/usage-examples-lightgrey
[changelog]: ./CHANGELOG.md
[changelog-badge]: https://img.shields.io/badge/changelog-release-green
[license]: ./LICENSE.md
[license-badge]: https://img.shields.io/badge/license-%40Rui%20Matos-orange
[notice]: ./NOTICE.md
[notice-badge]: https://img.shields.io/badge/notice-%40copyright-lightgrey
