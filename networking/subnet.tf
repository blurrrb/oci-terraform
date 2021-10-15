resource "oci_core_subnet" "default_subnet" {
  compartment_id = var.compartment_id
  vcn_id          = oci_core_vcn.default_vcn.id
  cidr_block     = cidrsubnet(oci_core_vcn.default_vcn.cidr_blocks[0], 8, 1)
  display_name   = "default_subnet"
}
