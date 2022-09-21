provider "oci" {
  tenancy_ocid     = var.tenancy_id
  user_ocid        = var.user_id
  private_key_path = var.private_key
  private_key      = var.private_key
  fingerprint      = var.fingerprint
  region           = var.region
}
