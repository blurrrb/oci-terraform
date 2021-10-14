variable "tenancy_id" {}
variable "compartment_id" {}
variable "fingerprint" {}
variable "user_id" {}
variable "region" {}
variable "oci_private_key_path" {}

provider "oci" {
  tenancy_ocid     = var.tenancy_id
  user_ocid        = var.user_id
  private_key_path = var.oci_private_key_path
  fingerprint      = var.fingerprint
  region           = var.region
}
