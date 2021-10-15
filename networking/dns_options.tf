resource "oci_core_default_dhcp_options" "default_dhcp_options" {
  manage_default_resource_id = oci_core_vcn.default_vcn.default_dhcp_options_id
  display_name = "default_dhcp_options"

  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
}