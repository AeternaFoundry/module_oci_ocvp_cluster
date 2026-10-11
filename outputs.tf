output "ocvp_clusters_id" {
  description = "Map of id values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no id are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ocvp_clusters_actual_esxi_hosts_count" {
  description = "Map of actual_esxi_hosts_count values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no actual_esxi_hosts_count are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.actual_esxi_hosts_count if v.actual_esxi_hosts_count != null }
}
output "ocvp_clusters_attach_datastore_cluster_ids" {
  description = "Map of attach_datastore_cluster_ids values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no attach_datastore_cluster_ids are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.attach_datastore_cluster_ids if v.attach_datastore_cluster_ids != null && length(v.attach_datastore_cluster_ids) > 0 }
}
output "ocvp_clusters_capacity_reservation_id" {
  description = "Map of capacity_reservation_id values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no capacity_reservation_id are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.capacity_reservation_id if v.capacity_reservation_id != null && length(v.capacity_reservation_id) > 0 }
}
output "ocvp_clusters_cluster_byol_allocation_details" {
  description = "Map of cluster_byol_allocation_details values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no cluster_byol_allocation_details are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => one(v.cluster_byol_allocation_details) if v.cluster_byol_allocation_details != null && length(v.cluster_byol_allocation_details) > 0 }
}
output "ocvp_clusters_compartment_id" {
  description = "Map of compartment_id values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no compartment_id are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ocvp_clusters_compute_availability_domain" {
  description = "Map of compute_availability_domain values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no compute_availability_domain are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.compute_availability_domain if v.compute_availability_domain != null && length(v.compute_availability_domain) > 0 }
}
output "ocvp_clusters_datastore_cluster_ids" {
  description = "Map of datastore_cluster_ids values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no datastore_cluster_ids are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.datastore_cluster_ids if v.datastore_cluster_ids != null && length(v.datastore_cluster_ids) > 0 }
}
output "ocvp_clusters_datastores" {
  description = "Map of datastores values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no datastores are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.datastores if v.datastores != null && length(v.datastores) > 0 }
}
output "ocvp_clusters_defined_tags" {
  description = "Map of defined_tags values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "ocvp_clusters_detach_datastore_cluster_ids" {
  description = "Map of detach_datastore_cluster_ids values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no detach_datastore_cluster_ids are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.detach_datastore_cluster_ids if v.detach_datastore_cluster_ids != null && length(v.detach_datastore_cluster_ids) > 0 }
}
output "ocvp_clusters_display_name" {
  description = "Map of display_name values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no display_name are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ocvp_clusters_esxi_hosts_count" {
  description = "Map of esxi_hosts_count values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no esxi_hosts_count are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.esxi_hosts_count if v.esxi_hosts_count != null }
}
output "ocvp_clusters_esxi_software_version" {
  description = "Map of esxi_software_version values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no esxi_software_version are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.esxi_software_version if v.esxi_software_version != null && length(v.esxi_software_version) > 0 }
}
output "ocvp_clusters_freeform_tags" {
  description = "Map of freeform_tags values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "ocvp_clusters_initial_commitment" {
  description = "Map of initial_commitment values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no initial_commitment are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.initial_commitment if v.initial_commitment != null && length(v.initial_commitment) > 0 }
}
output "ocvp_clusters_initial_fault_domain_host_distribution" {
  description = "Map of initial_fault_domain_host_distribution values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no initial_fault_domain_host_distribution are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.initial_fault_domain_host_distribution if v.initial_fault_domain_host_distribution != null && length(v.initial_fault_domain_host_distribution) > 0 }
}
output "ocvp_clusters_initial_host_ocpu_count" {
  description = "Map of initial_host_ocpu_count values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no initial_host_ocpu_count are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.initial_host_ocpu_count if v.initial_host_ocpu_count != null }
}
output "ocvp_clusters_initial_host_shape_name" {
  description = "Map of initial_host_shape_name values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no initial_host_shape_name are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.initial_host_shape_name if v.initial_host_shape_name != null && length(v.initial_host_shape_name) > 0 }
}
output "ocvp_clusters_initial_vcf_byol_allocation_id" {
  description = "Map of initial_vcf_byol_allocation_id values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no initial_vcf_byol_allocation_id are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.initial_vcf_byol_allocation_id if v.initial_vcf_byol_allocation_id != null && length(v.initial_vcf_byol_allocation_id) > 0 }
}
output "ocvp_clusters_instance_display_name_prefix" {
  description = "Map of instance_display_name_prefix values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no instance_display_name_prefix are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.instance_display_name_prefix if v.instance_display_name_prefix != null && length(v.instance_display_name_prefix) > 0 }
}
output "ocvp_clusters_is_shielded_instance_enabled" {
  description = "Map of is_shielded_instance_enabled values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no is_shielded_instance_enabled are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.is_shielded_instance_enabled if v.is_shielded_instance_enabled != null }
}
output "ocvp_clusters_network_configuration" {
  description = "Map of network_configuration values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no network_configuration are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => one(v.network_configuration) if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "ocvp_clusters_sddc_id" {
  description = "Map of sddc_id values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no sddc_id are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.sddc_id if v.sddc_id != null && length(v.sddc_id) > 0 }
}
output "ocvp_clusters_state" {
  description = "Map of state values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no state are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ocvp_clusters_system_tags" {
  description = "Map of system_tags values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no system_tags are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "ocvp_clusters_time_created" {
  description = "Map of time_created values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no time_created are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "ocvp_clusters_time_updated" {
  description = "Map of time_updated values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no time_updated are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "ocvp_clusters_upgrade_licenses" {
  description = "Map of upgrade_licenses values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no upgrade_licenses are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.upgrade_licenses if v.upgrade_licenses != null && length(v.upgrade_licenses) > 0 }
}
output "ocvp_clusters_vmware_software_version" {
  description = "Map of vmware_software_version values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no vmware_software_version are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.vmware_software_version if v.vmware_software_version != null && length(v.vmware_software_version) > 0 }
}
output "ocvp_clusters_vsphere_type" {
  description = "Map of vsphere_type values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no vsphere_type are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.vsphere_type if v.vsphere_type != null && length(v.vsphere_type) > 0 }
}
output "ocvp_clusters_vsphere_upgrade_objects" {
  description = "Map of vsphere_upgrade_objects values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no vsphere_upgrade_objects are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.vsphere_upgrade_objects if v.vsphere_upgrade_objects != null && length(v.vsphere_upgrade_objects) > 0 }
}
output "ocvp_clusters_workload_network_cidr" {
  description = "Map of workload_network_cidr values across all ocvp_clusters, keyed the same as var.ocvp_clusters except keys with no workload_network_cidr are omitted"
  value       = { for k, v in oci_ocvp_cluster.ocvp_clusters : k => v.workload_network_cidr if v.workload_network_cidr != null && length(v.workload_network_cidr) > 0 }
}

