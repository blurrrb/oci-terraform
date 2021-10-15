resource "oci_core_network_security_group" "ssh" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "ssh"
}

resource "oci_core_network_security_group_security_rule" "ssh" {
  network_security_group_id = oci_core_network_security_group.ssh.id
  protocol                  = "6"
  direction                 = "INGRESS"
  source                    = "0.0.0.0/0"

  tcp_options {
    source_port_range {
      min = 22
      max = 22
    }
  }
}



