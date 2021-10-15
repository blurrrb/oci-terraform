resource "oci_core_network_security_group" "http" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "http"
}

resource "oci_core_network_security_group_security_rule" "http__http" {
  network_security_group_id = oci_core_network_security_group.http.id
  protocol                  = "6"
  direction                 = "INGRESS"
  source                    = "0.0.0.0/0"

  tcp_options {
    source_port_range {
      min = 80
      max = 80
    }
  }
}

resource "oci_core_network_security_group_security_rule" "http__https" {
  network_security_group_id = oci_core_network_security_group.http.id
  protocol                  = "6"
  direction                 = "INGRESS"
  source                    = "0.0.0.0/0"

  tcp_options {
    source_port_range {
      min = 443
      max = 443
    }
  }
}
