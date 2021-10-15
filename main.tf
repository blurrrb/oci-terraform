module "management" {
  source = "./management"

  # variables
  tenancy_id       = var.tenancy_id
  fingerprint      = var.fingerprint
  user_id          = var.user_id
  region           = var.region
  private_key_path = var.private_key_path
  ad_number        = var.ad_number
}

module "networking" {
  source = "./networking"

  # variables
  compartment_id = var.compartment_id
}
