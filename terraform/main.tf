terraform {
  backend "gcs" {
  }
}

module "gcs_buckets" {
  source = "./modules/gcs_buckets"
  project = "${var.project}"
}
module "gcp_functions" {
  source = "./modules/gcp_functions"
  project = "${var.project}"
  source_archive_bucket = "${module.gcs_buckets.bucket-primary}"
  source_archive_object = "${module.gcs_buckets.cloudfunction-gcs-object}"
}

provider "google" {
  project = "${var.project}"
  region      = "us-central1"
}
