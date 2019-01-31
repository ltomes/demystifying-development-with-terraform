# output "service_email" {
#   value = "${module.gcp_service_accounts.service_email}"
# }

# output "service_json" {
#   value = "${base64decode(module.gcp_service_accounts.google_service_account_private_key)}"
# }

output "project" {
   value = "${var.project}"
}
output "cloudfunction-url" {
   value = "${module.gcp_functions.cloudfunction-url}"
}