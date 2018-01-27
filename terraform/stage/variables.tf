variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Region"
  default     = "europe-west1-b"
}

variable app_disk_image {
  description = "Application disk image"
}

variable db_disk_image {
  description = "Database disk image"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}