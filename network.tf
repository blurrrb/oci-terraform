resource "oci_core_vcn" "default_vcn" {
  compartment_id = var.compartment_id
  display_name   = "default_vcn"
  cidr_blocks = [ "10.0.0.0/16" ]
}

resource "oci_core_default_route_table" "default_route_table" {
  manage_default_resource_id = oci_core_vcn.default_vcn.default_route_table_id
  display_name               = "default_route_table"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.default_internet_gateway.id
  }
}

resource "oci_core_default_dhcp_options" "default_dhcp_options" {
  manage_default_resource_id = oci_core_vcn.default_vcn.default_dhcp_options_id
  display_name = "default_dhcp_options"

  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
}

resource "oci_core_internet_gateway" "default_internet_gateway" {
  compartment_id = var.compartment_id
  display_name   = "default_internet_gateway"
  vcn_id         = oci_core_vcn.default_vcn.id
}

resource "oci_core_subnet" "default_subnet" {
  compartment_id = var.compartment_id
  vcn_id          = oci_core_vcn.default_vcn.id
  cidr_block     = cidrsubnet(oci_core_vcn.default_vcn.cidr_blocks[0], 8, 1)
  display_name   = "default_subnet"
}


