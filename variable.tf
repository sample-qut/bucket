variable "terraform_service_account" {
  description = "Service account email of the account to impersonate to run Terraform."
  type        = string
}

variable "project_id" {
  description = "Service account email of the account to impersonate to run Terraform."
  default       = "cft-seed-50a5"
}
