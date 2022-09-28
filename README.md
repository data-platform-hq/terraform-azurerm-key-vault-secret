# Azure Key Vault Secret Terraform module
Terraform module for creation Azure Key Vault Secret

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_secret.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_expiration_date"></a> [default\_expiration\_date](#input\_default\_expiration\_date) | Expiration UTC datetime (Y-m-d'T'H:M:S'Z') | `string` | `null` | no |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | The ID of the Key Vault where the Secret should be created | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | Optional | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-key-vault-secret/tree/main/LICENSE)
