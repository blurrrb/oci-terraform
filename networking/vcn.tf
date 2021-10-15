resource "oci_core_vcn" "default_vcn" {
  compartment_id = var.compartment_id
  display_name   = "default_vcn"
  cidr_blocks    = ["10.0.0.0/16"]
}
