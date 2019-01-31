resource "google_storage_bucket" "primary_bucket" {   
  name     = "primary-${var.project}"
  location = "US"
}
resource "google_storage_bucket_object" "archive" {
  name   = "index-${timestamp()}.zip"
  bucket = "${google_storage_bucket.primary_bucket.name}"
  # Note, this path is from where terraform is excicuted, not the module location.
  source = "./../dist/index.zip"
}