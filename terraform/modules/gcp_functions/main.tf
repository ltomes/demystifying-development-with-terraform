resource "google_cloudfunctions_function" "exampleFunction" {
  name                  = "example-function"
  description           = "My function for ${var.project}"
  available_memory_mb   = 128
  trigger_http          = true
  runtime               = "nodejs8"
  source_archive_bucket = "${var.source_archive_bucket}"
  source_archive_object = "${var.source_archive_object}"
  timeout               = 60
  entry_point           = "helloGET"
  labels {
    my-label = "some-label-value"
  }
  environment_variables {
    MY_ENV_VAR = "some-env-var-value"
  }
}
