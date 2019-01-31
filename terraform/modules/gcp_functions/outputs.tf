output "cloudfunction-url" {
   value = "${google_cloudfunctions_function.exampleFunction.https_trigger_url}"
}