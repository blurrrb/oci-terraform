resource "oci_core_network_security_group" "network_security_group__dns" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.default_vcn.id

  display_name = "network_security_group__dns"
}

resource "oci_core_network_security_group" "network_security_group__http" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.default_vcn.id

  display_name = "network_security_group__http"
}

resource "oci_core_network_security_group" "network_security_group__ssh" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.default_vcn.id

  display_name = "network_security_group__ssh"
}

# --------------------------------------------------------------------------------------

resource "oci_core_network_security_group_security_rule" "network_security_group__ssh" {
  network_security_group_id = oci_core_network_security_group.network_security_group__ssh.id
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

resource "oci_core_network_security_group_security_rule" "network_security_group__http__http" {
  network_security_group_id = oci_core_network_security_group.network_security_group__http.id
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



resource "oci_core_network_security_group_security_rule" "network_security_group__http__https" {
  network_security_group_id = oci_core_network_security_group.network_security_group__http.id
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

resource "oci_core_network_security_group_security_rule" "network_security_group__dns__tcp" {
  network_security_group_id = oci_core_network_security_group.network_security_group__dns.id
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

resource "oci_core_network_security_group_security_rule" "network_security_group__dns__udp" {
  network_security_group_id = oci_core_network_security_group.network_security_group__dns.id
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