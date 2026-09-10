output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "The name of the Azure Storage Account."
}

output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "The name of the Azure Resource Group."
}
output "storage_account_id" {
  value       = azurerm_storage_account.this.id
  description = "The ID of the Azure Storage Account."
}