resource "oci_core_network_security_group" "dns" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "dns"
}

resource "oci_core_network_security_group_security_rule" "dns__tcp" {
  network_security_group_id = oci_core_network_security_group.dns.id
  protocol                  = "6"
  direction                 = "INGRESS"
  source                    = "0.0.0.0/0"

  tcp_options {
    source_port_range {
      min = 53
      max = 53
    }
  }
}

resource "oci_core_network_security_group_security_rule" "dns__udp" {
  network_security_group_id = oci_core_network_security_group.dns.id
  protocol                  = "17"
  direction                 = "INGRESS"
  source                    = "0.0.0.0/0"

  udp_options {
    source_port_range {
      min = 53
      max = 53
    }
  }
}
