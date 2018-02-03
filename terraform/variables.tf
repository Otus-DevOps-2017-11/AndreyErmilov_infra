variable "project" {
  description = "Project ID"
}

variable "region" {
  description = "Region"
  default     = "europe-west1"
}

variable "buckets" {
  description = "List of GCS buckets"
  default     = ["reddit-app"]
}
