variable "tenancy_id" {
  description = "oci tenancy ocid"
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

variable "private_key_path" {
  description = "path to private key used to access oci apis"
  default     = "~/.oci/key.pem"
}

variable "ad_number" {
  default = 1
}
