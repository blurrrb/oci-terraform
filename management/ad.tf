data "oci_identity_availability_domain" "default_ad" {
  compartment_id = var.tenancy_id
  ad_number      = var.ad_number
}
