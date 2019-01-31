resource "google_service_account" "default" {
  account_id = "gcs-service-account"
  display_name = "gcs-service-account"
}

resource "google_service_account_key" "default" {
  service_account_id = "${google_service_account.default.name}"
}

data "google_service_account_key" "default" {
  name = "${google_service_account_key.default.name}"
  public_key_type = "TYPE_X509_PEM_FILE"
}
