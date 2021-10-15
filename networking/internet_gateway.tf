resource "oci_core_internet_gateway" "default_internet_gateway" {
  compartment_id = var.compartment_id
  display_name   = "default_internet_gateway"
  vcn_id         = oci_core_vcn.default_vcn.id
}

