locals {
  default_expiration_date = var.default_expiration_date == null ? timeadd(timestamp(), "4320h") : var.default_expiration_date
}

resource "azurerm_key_vault_secret" "this" {
  for_each = var.secrets

  name            = each.key
  value           = each.value["value"]
  content_type    = lookup(each.value, "content_type", "PlainText")
  expiration_date = lookup(each.value, "expiration_date", local.default_expiration_date)
  key_vault_id    = var.key_vault_id
  tags            = var.tags

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}
