variable "tenancy_id" {
  description = "oci tenancy ocid"
}

variable "compartment_id" {
  description = "oci compartment ocid"
}

variable "fingerprint" {
  description = "oci fingerprint"
}

variable "user_id" {
  description = "oci user ocid"
}

variable "region" {
  description = "oci region"
}

variable "private_key" {
  description = "private key used to access oci apis"
}

variable "private_key_password" {
  description = "password used to decrypt private key"
}

variable "ad_number" {
  default = 1
}
