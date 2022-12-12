terraform {
  required_version  = ">= 1.3.4"

  backend "remote" {
    hostname = "backend.api.env0.com"
    organization = "${data.env_variable.env0_proj_id.value}.${data.env_variable.env0_proj_id.value}"

    workspaces {
      name = "testing-self-tf-commands-1"
    }
  }
}