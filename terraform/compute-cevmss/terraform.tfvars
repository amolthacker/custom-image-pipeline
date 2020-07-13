location                    = "eastus2"

resource_group_devops       = "cdp-devops"
storage_account_devops      = "cdpdevops"
storage_account_devops_sku  = "Standard_LRS"

resource_group_compute      = "cdp-compute"
storage_account_compute     = "cdpcompute"
storage_account_compute_sku = "Premium_LRS"

vmss_name                   = "cevmss"
vmss_instance_count         = "2"
vmss_vm_sku                 = "Standard_DS2_v2"
vmss_vm_admin_username      = "cdp"
vmss_vm_ssh_pubkey          = "ssh-rsa ... cdp@azure"

//vmss_vm_src_img_name        = "compute-engine-managed"