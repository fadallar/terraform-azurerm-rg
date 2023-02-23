resource "azurerm_resource_group" "main_rg" {
  name     = local.name
  location = var.location

  tags = merge(var.default_tags, var.extra_tags)
}

resource "azurerm_management_lock" "resource_group_level_lock" {
  count      = var.lock_level == "" ? 0 : 1
  name       = "${local.name}-${var.lock_level}"
  scope      = azurerm_resource_group.main_rg.id
  lock_level = var.lock_level
  notes      = "Resource Group '${local.name}' is locked with '${var.lock_level}' level."
}
