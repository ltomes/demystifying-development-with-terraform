output "bucket-primary" {
   value = "${google_storage_bucket.primary_bucket.name}"
}

output "cloudfunction-gcs-object" {
   value = "${google_storage_bucket_object.archive.name}"
}