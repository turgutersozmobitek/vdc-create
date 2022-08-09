resource "vcd_org_vdc" "vdc-name" {
  name        = var.vdc_name
  description = var.vdc_description
  org         = var.org_name

  allocation_model = "AllocationVApp"
  network_pool_name = "Provider-GENEVE-NP"
  provider_vdc_name = var.vdc_pvdc_name

  compute_capacity {
    cpu {
      allocated = var.org_cp_val
    }
    memory {
      allocated = var.org_mem_val
    }
  }

  storage_profile {
    name = var.vdc_storage_name
    limit = var.vdc_storage_limit
    default = true
  }
  vm_quota = var.vm_quota
  cpu_guaranteed = 0
  memory_guaranteed = 0
  cpu_speed = 2000
  enabled = true
  enable_thin_provisioning = true
  enable_fast_provisioning = false
  delete_force = true
  delete_recursive = true 
}
