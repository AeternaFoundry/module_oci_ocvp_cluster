variable "ocvp_clusters" {
  description = <<EOT
Map of ocvp_clusters, attributes below
Required:
    - compute_availability_domain
    - esxi_hosts_count
    - sddc_id
    - network_configuration (block):
        - hcx_vlan_id (optional)
        - nsx_edge_uplink1vlan_id (optional)
        - nsx_edge_uplink2vlan_id (optional)
        - nsx_edge_vtep_vlan_id (required)
        - nsx_vtep_vlan_id (required)
        - provisioning_subnet_id (required)
        - provisioning_vlan_id (optional)
        - replication_vlan_id (optional)
        - vmotion_vlan_id (required)
        - vsan_vlan_id (required)
        - vsphere_vlan_id (optional)
Optional:
    - attach_datastore_cluster_ids
    - capacity_reservation_id
    - datastore_cluster_ids
    - defined_tags
    - detach_datastore_cluster_ids
    - display_name
    - esxi_software_version
    - freeform_tags
    - initial_commitment
    - initial_fault_domain_host_distribution
    - initial_host_ocpu_count
    - initial_host_shape_name
    - initial_vcf_byol_allocation_id
    - instance_display_name_prefix
    - is_shielded_instance_enabled
    - vmware_software_version
    - workload_network_cidr
    - cluster_byol_allocation_details (block):
        - firewall_byol_allocation_id (optional)
        - vsan_byol_allocation_id (optional)
    - datastores (block):
        - block_volume_ids (required)
        - datastore_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compute_availability_domain            = string
    esxi_hosts_count                       = number
    sddc_id                                = string
    attach_datastore_cluster_ids           = optional(list(string))
    capacity_reservation_id                = optional(string)
    datastore_cluster_ids                  = optional(list(string))
    defined_tags                           = optional(map(string))
    detach_datastore_cluster_ids           = optional(list(string))
    display_name                           = optional(string)
    esxi_software_version                  = optional(string)
    freeform_tags                          = optional(map(string))
    initial_commitment                     = optional(string)
    initial_fault_domain_host_distribution = optional(string)
    initial_host_ocpu_count                = optional(number)
    initial_host_shape_name                = optional(string)
    initial_vcf_byol_allocation_id         = optional(string)
    instance_display_name_prefix           = optional(string)
    is_shielded_instance_enabled           = optional(bool)
    vmware_software_version                = optional(string)
    workload_network_cidr                  = optional(string)
    network_configuration = object({
      hcx_vlan_id             = optional(string)
      nsx_edge_uplink1vlan_id = optional(string)
      nsx_edge_uplink2vlan_id = optional(string)
      nsx_edge_vtep_vlan_id   = string
      nsx_vtep_vlan_id        = string
      provisioning_subnet_id  = string
      provisioning_vlan_id    = optional(string)
      replication_vlan_id     = optional(string)
      vmotion_vlan_id         = string
      vsan_vlan_id            = string
      vsphere_vlan_id         = optional(string)
    })
    cluster_byol_allocation_details = optional(object({
      firewall_byol_allocation_id = optional(string)
      vsan_byol_allocation_id     = optional(string)
    }))
    datastores = optional(list(object({
      block_volume_ids = list(string)
      datastore_type   = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

