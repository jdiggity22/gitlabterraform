# Setup - Make sure to export your connection variables
#      export GITLAB_TOKEN=<Your token here>
#      export GITLAB_BASE_URL=https://gitlab.10.10.1.4.nip.io/api/v4/
#
# Configure the GitLab Provider
provider "gitlab" {
    #token = "${var.gitlab_token}"
    insecure = "true"
}

resource "gitlab_project" "camexample" {
  name        = "camexample"
  description = "Sample project to show how to use a 3rd party Terraform provider in CAM."

  visibility_level = "public"
}

#variable "gitlab_token" {
#  description = "Gitlab API token."
#}
