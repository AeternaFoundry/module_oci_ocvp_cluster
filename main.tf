resource "oci_ocvp_cluster" "ocvp_clusters" {
  for_each = var.ocvp_clusters

  compute_availability_domain            = each.value.compute_availability_domain
  esxi_hosts_count                       = each.value.esxi_hosts_count
  sddc_id                                = each.value.sddc_id
  attach_datastore_cluster_ids           = each.value.attach_datastore_cluster_ids
  capacity_reservation_id                = each.value.capacity_reservation_id
  datastore_cluster_ids                  = each.value.datastore_cluster_ids
  defined_tags                           = each.value.defined_tags
  detach_datastore_cluster_ids           = each.value.detach_datastore_cluster_ids
  display_name                           = each.value.display_name
  esxi_software_version                  = each.value.esxi_software_version
  freeform_tags                          = each.value.freeform_tags
  initial_commitment                     = each.value.initial_commitment
  initial_fault_domain_host_distribution = each.value.initial_fault_domain_host_distribution
  initial_host_ocpu_count                = each.value.initial_host_ocpu_count
  initial_host_shape_name                = each.value.initial_host_shape_name
  initial_vcf_byol_allocation_id         = each.value.initial_vcf_byol_allocation_id
  instance_display_name_prefix           = each.value.instance_display_name_prefix
  is_shielded_instance_enabled           = each.value.is_shielded_instance_enabled
  vmware_software_version                = each.value.vmware_software_version
  workload_network_cidr                  = each.value.workload_network_cidr

  network_configuration {
    hcx_vlan_id             = each.value.network_configuration.hcx_vlan_id
    nsx_edge_uplink1vlan_id = each.value.network_configuration.nsx_edge_uplink1vlan_id
    nsx_edge_uplink2vlan_id = each.value.network_configuration.nsx_edge_uplink2vlan_id
    nsx_edge_vtep_vlan_id   = each.value.network_configuration.nsx_edge_vtep_vlan_id
    nsx_vtep_vlan_id        = each.value.network_configuration.nsx_vtep_vlan_id
    provisioning_subnet_id  = each.value.network_configuration.provisioning_subnet_id
    provisioning_vlan_id    = each.value.network_configuration.provisioning_vlan_id
    replication_vlan_id     = each.value.network_configuration.replication_vlan_id
    vmotion_vlan_id         = each.value.network_configuration.vmotion_vlan_id
    vsan_vlan_id            = each.value.network_configuration.vsan_vlan_id
    vsphere_vlan_id         = each.value.network_configuration.vsphere_vlan_id
  }

  dynamic "cluster_byol_allocation_details" {
    for_each = each.value.cluster_byol_allocation_details != null ? [each.value.cluster_byol_allocation_details] : []
    content {
      firewall_byol_allocation_id = cluster_byol_allocation_details.value.firewall_byol_allocation_id
      vsan_byol_allocation_id     = cluster_byol_allocation_details.value.vsan_byol_allocation_id
    }
  }

  dynamic "datastores" {
    for_each = each.value.datastores != null ? each.value.datastores : []
    content {
      block_volume_ids = datastores.value.block_volume_ids
      datastore_type   = datastores.value.datastore_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

