variable "location" {
  type        = "string"
  default     = "eastus2"
  description = "Azure resources location"
}

variable "resource_group_devops" {
  type        = "string"
  default     = "cdp-devops"
  description = "CDP cdp DevOps RG"
}
variable "storage_account_devops" {
  type        = "string"
  default     = "cdpdevops"
  description = "CDP cdp DevOps Storage Account"
}
variable "storage_account_devops_sku" {
  type        = "string"
  default     = "Standard_LRS"
  description = "CDP cdp DevOps Storage Account SKU"
}

variable "resource_group_compute" {
  type        = "string"
  default     = "cdp-compute"
  description = "CDP cdp Compute RG"
}
variable "storage_account_compute" {
  type        = "string"
  default     = "cdpcompute"
  description = "CDP cdp Compute Storage Account"
}
variable "storage_account_compute_sku" {
  type        = "string"
  default     = "Premium LRS"
  description = "CDP cdp Compute Storage Account SKU"
}

variable "vmss_name" {
  type        = "string"
  default     = "cevmss"
  description = "VMSS name"
}
variable "vmss_instance_count" {
  type        = "string"
  default     = "1"
  description = "VMSS instances"
}
variable "vmss_vm_sku" {
  type        = "string"
  default     = "Standard_DS2_v2"
  description = "VMSS VM SKU"
}
variable "vmss_vm_admin_username" {
  type        = "string"
  default     = "cdp"
  description = "VMSS VM admin username"
}
variable "vmss_vm_ssh_pubkey" {
  type        = "string"
  default     = "cdp"
  description = "VMSS VM SSH public key"
}

variable "vmss_vm_src_img_name" {
  type        = "string"
  default     = "compute-engine-managed"
  description = "Managed custom image name set by env variable TF_VAR_vmss_vm_src_img_name"
}
