resource "oci_core_default_security_list" "default_security_list" {
  manage_default_resource_id = oci_core_vcn.default_vcn.default_security_list_id
  display_name = "default_security_list"

  # Allow all outgoing traffic by default
  egress_security_rules {
    # TCP
    protocol    = "6"
    destination = "0.0.0.0/0"
  }

  egress_security_rules {
    # UDP
    protocol    = "17"
    destination = "0.0.0.0/0"
  }
}
