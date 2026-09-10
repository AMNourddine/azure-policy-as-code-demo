
variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
  default     = "rg-policy-demo"
}