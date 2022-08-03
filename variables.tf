# vCloud Director Organization Variables

variable "vcenter_name" {
    type        = string
    description = "vCenter Name"
}

variable "cd_username" {
    type        = string
    description = "CloudDirector UserName"
}
variable "cd_password" {
    type        = string
    description = "CloudDirector Password"
}

variable "cd_vdcadres" {
    type        = string
    description = "CloudDirector Adresi"
}

variable "org_name" {
    type        = string
    description = "Organizasyon İsmi"
}

variable "vdc_name" {
    type        = string
    description = "VDC Name"

}

variable "vdc_description" {
    type        = string
    description = "VDC Description"
}

variable "vdc_pvdc_name" {
    type        = string
    default     = "list"
    description = "Provider VDC Adı:"
}


variable "org_cp_val" {
    type        = string
    default     = "list"
    description = "VDC Cpu Kota"    
}    

variable "org_mem_val" {
    type        = string
    default     = "list"   
    description = "VDC Memory Kota"    
}

variable "vm_quota" {
    type        = string
    description = "VM Kotası"  
}