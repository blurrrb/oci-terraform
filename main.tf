data "oci_identity_availability_domain" "default_ad" {
  compartment_id = var.tenancy_id
  ad_number      = var.ad_number
}

provider "oci" {
  tenancy_ocid     = var.tenancy_id
  user_ocid        = var.user_id
  private_key_path = var.private_key_path
  fingerprint      = var.fingerprint
  region           = var.region
}

terraform {
  backend "http" {
    update_method = "PUT"
  }
}

module "networking" {
  source = "./networking"

  # variables
  compartment_id = var.compartment_id
}
