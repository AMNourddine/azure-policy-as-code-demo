package main

deny contains msg if {
  resource := input.resource_changes[_]
  resource.type == "azurerm_storage_account"
  resource.change.after.https_traffic_only_enabled == false
  msg := sprintf("Storage account '%s' must have https_traffic_only_enabled = true", [resource.change.after.name])
}


deny contains msg if {
  resource := input.resource_changes[_]
  resource.type == "azurerm_storage_account"
  resource.change.after.public_network_access_enabled == true
  msg := sprintf("Storage account '%s' must not allow public network access", [resource.change.after.name])
}


deny contains msg if {
  resource := input.resource_changes[_]
  resource.type == "azurerm_storage_account"
  not resource.change.after.tags.owner
  msg := sprintf("Storage account '%s' is missing required tag 'owner'", [resource.change.after.name])
}